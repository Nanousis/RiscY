`ifndef TESTBENCH
`include "config.vh"
`else
`include "../includes/config.vh"
`endif
`define TAG_PC(signal) (signal[23:13])
`define OFFSET(signal) (signal[12:2])
`define TAGV_TAG(signal) (signal[10:0])
`define TAGV_VALID(signal) (signal[15:15])
`define INVALID_PC 32'hffffffff
`define NOP 32'h00000013 // NOP instruction
module i_cache(
    input cpu_clk,
    input sdram_clk,
    input reset_n,
    input [31:0] pc_if1,
    input [31:0] pc_if2,
    input write_pc,
    input [31:0] sdram_in,
    input sdram_ack,

    output reg stall,
    output reg icache_ren,
    output reg [31:0] icache_addr,
    output reg [31:0] instr_out
);

typedef enum logic [1:0] {
    IDLE   = 2'b00,
    READ_MEM = 2'b01,
    UPDATE_CACHE = 2'b10,
    INVALIDATE_CACHE = 2'b11
} state_t;
state_t state, next_state;


wire [31:0] pc_stalled = (pc_if2 == 32'hffffffff) ? pc_if1 : pc_if2; // Use pc_if1 if pc_if2 is invalid
wire [31:0] pc =pc_if1;

reg [31:0] pc_reg;
reg sdram_ack_reg;
reg enable;
reg miss;
reg miss_sync;
reg temp_stall;
reg stall_reg;

assign stall = (stall_reg | temp_stall)& enable; // Stall if either condition is true
always_comb begin
    temp_stall = 1'b0; // Default no stall
    miss = 1'b0; // Default no miss
    instr_out = 32'h00_00_00_13; // nop

    if(enable)
    begin
        // if(state == IDLE)begin
            if(tag_valid[10:0] == tag_reg && tag_valid[15])
            begin
                instr_out = bram_instr_out;
            end
            else
            begin
                temp_stall = 1'b1;
                miss = 1'b1; // Cache miss
            end
            if(state != IDLE)begin
                temp_stall = 1'b1;
            end
        // end
        // else begin
            // temp_stall = 1'b1;
        // end
    end
end
reg [10:0] ptr;
reg [128*8:0] test_str;
reg [31:0] pc_to_write;

wire valid_write = (pc_to_write==pc_stalled);


always_ff@(posedge cpu_clk or negedge reset_n)
begin
    if(reset_n == 1'b0) begin
        pc_reg <= 32'b0;
        tag_reg <= 14'b0;
        offset_reg <= 11'b0;
        stall_reg <= 1'b0;
    end
    else begin
        stall_reg <= temp_stall; // Synchronize stall to cpu_clk domain
        if( pc >= `SDRAM_BEGIN && pc < `SDRAM_END)begin
            enable = 1'b1; // Cache stall if PC is in SDRAM range
        end
        else begin
            enable = 1'b0; // No stall if PC is outside SDRAM range
        end
        if(~(stall)) begin
            pc_reg <= pc;
            tag_reg <= tag;
            offset_reg <= offset;
        end
        else begin
            pc_reg <= pc; // Hold the previous value if stalled
            tag_reg <=  `TAG_PC(pc); // Hold the previous value if stalled
            offset_reg <= `OFFSET(pc); // Hold the previous value if stalled
        end
    end
end

always_ff @(posedge sdram_clk or negedge reset_n) begin
    if(reset_n == 1'b0) begin
        state <= IDLE;
        icache_ren <= 1'b0;
        icache_addr <= 32'b0;
        sdram_ack_reg <= 1'b0;
        tag_valid_to_write <= 17'b0;
        ptr <= 0;
        test_str <= "RESET";
        pc_to_write <= 32'b0;
    end
    else begin
        sdram_ack_reg <= sdram_ack; // Synchronize sdram_ack to sdram_clk domain
        miss_sync <= miss; // Synchronize miss to sdram_clk domain
        case(state)
        IDLE: begin
            if(enable && miss_sync) begin
                state <= READ_MEM;
                icache_ren <= 1'b1;
                icache_addr <= pc_reg[22:2] & ~('b1111); // Align to 16words per cache line
                pc_to_write <= pc_reg;
                ptr <= offset_reg & ~('b1111); // Align to 16words per cache line
                test_str <= "READ_MEM";
            end
            else begin
                state <= IDLE;
                test_str <= "IDLE";
                icache_ren <= 1'b0;
                sdram_ack_reg <= sdram_ack;
            end
        end
        READ_MEM: begin
            icache_addr <= pc_reg[22:2] & ~('b1111); // Align to 16words per cache line
            tag_valid_to_write <= {2'b11, tag_reg};
            if(sdram_ack) begin
                icache_ren <= 1'b0;
                ptr <= ptr + 1;
                state <= UPDATE_CACHE;
            end
        end
        UPDATE_CACHE: begin
            ptr <= ptr + 1;
            // this is a problem if we want the 15th word to be read.
            // needs one more cycle
            if(!sdram_ack) begin
                state <= IDLE;
            end
        end
        endcase
    end
end

wire [31:0] bram_instr_out;
wire bram_wen = (sdram_ack | sdram_ack_reg) & valid_write;

// sdram is [20:0] words long. so 22:2 is the pc given to the sdram
// sdram is 8MB (2^23) or 2M words(2^21)
// pc: [31:23] not used, [22:12] tag, [11:2] index
// tag_valid is 16 bits. tagvalid[15] is the valid bit
// tag_valid[10:0] is the tag 

wire [10:0] offset =(stall | ~write_pc)? `OFFSET(pc_stalled):`OFFSET(pc);
wire [13:0] tag = (stall | ~write_pc)? `TAG_PC(pc_stalled):`TAG_PC(pc);
reg [10:0] offset_reg;
reg [13:0] tag_reg;
wire [15:0] tag_valid;
reg [15:0] tag_valid_to_write;

Gowin_DPB_program INSTR_BRAM_0(
    .douta(bram_instr_out[7:0]), //output [7:0] douta 
    .clka(cpu_clk), //input clka 
    .ocea(1'b1), //input ocea 
    .cea(1'b1), //input cea 
    .reseta(!reset_n), //input reseta 
    .wrea(1'b0), //input wrea
    .ada(offset), //input [10:0] ada 
    .dina('b0), //input [7:0] dina
    
    .doutb(), //output [7:0] doutb
    .clkb(sdram_clk), //input clkb
    .oceb(1'b1), //input oceb
    .ceb(1'b1), //input ceb
    .resetb(!reset_n), //input resetb
    .wreb(bram_wen), //input wreb
    .adb(ptr), //input [10:0] adb
    .dinb(sdram_in[7:0]) //input [7:0] dinb
);
Gowin_DPB_program INSTR_BRAM_1(
    .douta(bram_instr_out[15:8]), //output [7:0] douta 
    .clka(cpu_clk), //input clka 
    .ocea(1'b1), //input ocea 
    .cea(1'b1), //input cea 
    .reseta(!reset_n), //input reseta 
    .wrea(1'b0), //input wrea
    .ada(offset), //input [10:0] ada 
    .dina('b0), //input [7:0] dina
    
    .doutb(), //output [7:0] doutb
    .clkb(sdram_clk), //input clkb
    .oceb(1'b1), //input oceb
    .ceb(1'b1), //input ceb
    .resetb(!reset_n), //input resetb
    .wreb(bram_wen), //input wreb
    .adb(ptr), //input [10:0] adb
    .dinb(sdram_in[15:8]) //input [7:0] dinb
);
Gowin_DPB_program INSTR_BRAM_2(
    .douta(bram_instr_out[23:16]), //output [7:0] douta 
    .clka(cpu_clk), //input clka 
    .ocea(1'b1), //input ocea 
    .cea(1'b1), //input cea 
    .reseta(!reset_n), //input reseta 
    .wrea(1'b0), //input wrea
    .ada(offset), //input [10:0] ada 
    .dina('b0), //input [7:0] dina
    
    .doutb(), //output [7:0] doutb
    .clkb(sdram_clk), //input clkb
    .oceb(1'b1), //input oceb
    .ceb(1'b1), //input ceb
    .resetb(!reset_n), //input resetb
    .wreb(bram_wen), //input wreb
    .adb(ptr), //input [10:0] adb
    .dinb(sdram_in[23:16]) //input [7:0] dinb
);
Gowin_DPB_program INSTR_BRAM_3(
    .douta(bram_instr_out[31:24]), //output [7:0] douta 
    .clka(cpu_clk), //input clka 
    .ocea(1'b1), //input ocea 
    .cea(1'b1), //input cea 
    .reseta(!reset_n), //input reseta 
    .wrea(1'b0), //input wrea
    .ada(offset), //input [10:0] ada 
    .dina('b0), //input [7:0] dina
    
    .doutb(), //output [7:0] doutb
    .clkb(sdram_clk), //input clkb
    .oceb(1'b1), //input oceb
    .ceb(1'b1), //input ceb
    .resetb(!reset_n), //input resetb
    .wreb(bram_wen), //input wreb
    .adb(ptr), //input [10:0] adb
    .dinb(sdram_in[31:24]) //input [7:0] dinb
);

Gowin_DPB_program TAG_VALID_BRAM_0(
    .douta(tag_valid[7:0]), //output [7:0] douta 
    .clka(cpu_clk), //input clka 
    .ocea(1'b1), //input ocea 
    .cea(1'b1), //input cea 
    .reseta(!reset_n), //input reseta 
    .wrea(1'b0), //input wrea
    .ada(offset), //input [10:0] ada 
    .dina('b0), //input [7:0] dina
    
    .doutb(), //output [7:0] doutb
    .clkb(sdram_clk), //input clkb
    .oceb(1'b1), //input oceb
    .ceb(1'b1), //input ceb
    .resetb(!reset_n), //input resetb
    .wreb(bram_wen), //input wreb
    .adb(ptr), //input [10:0] adb
    .dinb(tag_valid_to_write[7:0]) //input [7:0] dinb
);
Gowin_DPB_program TAG_VALID_BRAM_1(
    .douta(tag_valid[15:8]), //output [7:0] douta 
    .clka(cpu_clk), //input clka 
    .ocea(1'b1), //input ocea 
    .cea(1'b1), //input cea 
    .reseta(!reset_n), //input reseta 
    .wrea(1'b0), //input wrea
    .ada(offset), //input [10:0] ada 
    .dina('b0), //input [7:0] dina
    
    .doutb(), //output [7:0] doutb
    .clkb(sdram_clk), //input clkb
    .oceb(1'b1), //input oceb
    .ceb(1'b1), //input ceb
    .resetb(!reset_n), //input resetb
    .wreb(bram_wen), //input wreb
    .adb(ptr), //input [10:0] adb
    .dinb(tag_valid_to_write[15:8]) //input [7:0] dinb
);


`ifdef TESTBENCH
// debug stuff
integer file;

initial begin
    // Open the file in write mode ("w") – creates or overwrites the file
    file = $fopen("cache.out", "w");

    if (file == 0) begin
      $display("Error: Could not open file.");
      $finish;
    end
end
integer new_cache_line = 0;
always_ff @(posedge sdram_clk)begin
    if(bram_wen)
    begin
        if(new_cache_line == 0)
        begin
            $fwrite(file, "\nNew cache line at PC = %h\n", pc_reg);
            new_cache_line = 1;
        end
        $fwrite(file, "Writing to cache %h: data = %h. PC = %h\n", {ptr}, sdram_in, pc_reg);
    end
    else
    begin
        new_cache_line = 0;
    end
end
`endif


endmodule