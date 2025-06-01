`ifndef TESTBENCH

`define WORLDBRAMSIZE 2048
// `define NUM_BRAMS 4

//this means that the total is 4*WORLDBRAMSIZE*NUM_BRAMS

module programMemory #(
    parameter NUM_BRAMS = 4
)
( 
    input clk,
    input reset,
    input [31:2] PC,
    input [31:2] address,
    input ren,
    input wen,
    input [31:0] data_in,
    input [3:0] byte_select_vector,

    output [31:0] instr,
    output [31:0] data_out
);  

    localparam SEL_WIDTH = (NUM_BRAMS > 1) ? $clog2(NUM_BRAMS) : 1;

    wire [31:0] instr_tmp[0:NUM_BRAMS-1];
    wire [31:0] data_out_tmp[0:NUM_BRAMS-1];
    
    reg [SEL_WIDTH-1:0] PC_select;
    reg [SEL_WIDTH-1:0] data_select;
    reg [SEL_WIDTH-1:0] PC_select_reg;
    reg [SEL_WIDTH-1:0] data_select_reg;

    always @(posedge clk) begin
        PC_select_reg <= PC_select;
        data_select_reg <= data_select;
    end

    integer i;
    always @(*) begin
        data_select = NUM_BRAMS - 1;
        PC_select   = NUM_BRAMS - 1;
        for (i = 0; i < NUM_BRAMS; i = i + 1) begin
            if (address < (i + 1) * `WORLDBRAMSIZE) begin
                data_select = i[SEL_WIDTH-1:0];
                break;
            end
        end
        for (i = 0; i < NUM_BRAMS; i = i + 1) begin
            if (PC < (i + 1) * `WORLDBRAMSIZE) begin
                PC_select = i[SEL_WIDTH-1:0];
                break;
            end
        end
    end

    assign instr = instr_tmp[PC_select_reg];
    assign data_out = data_out_tmp[data_select_reg];

    genvar bram_idx;
    generate
        for (bram_idx = 0; bram_idx < NUM_BRAMS; bram_idx = bram_idx + 1) begin : bram_array
            word_bram bram_inst (
                .clk(clk),
                .reset(reset),
                .ren(ren),
                .wen((data_select == bram_idx) ? wen : 0),
                .byte_select_vector(byte_select_vector),
                .PC(PC - bram_idx * `WORLDBRAMSIZE),
                .data_in(data_in),
                .address(address - bram_idx * `WORLDBRAMSIZE),
                .instr(instr_tmp[bram_idx]),
                .data_out(data_out_tmp[bram_idx])
            );
        end
    endgenerate

endmodule

`else

module programMemory( 
    input clk,
    input reset,
    input [31:2] PC,
    input [31:2] address,
    input ren,
    input wen,
    input [31:0] data_in,
    input [3:0] byte_select_vector,

    output [31:0] instr,
    output [31:0] data_out
);  

    wire [7:0] instr0, instr1, instr2, instr3;
    wire [7:0] instr20, instr21, instr22, instr23;
    wire [7:0] data_out0, data_out1, data_out2, data_out3;
    wire [7:0] data2_out0, data2_out1, data2_out2, data2_out3;
    wire [7:0] data_in0, data_in1, data_in2, data_in3;
    wire wen0, wen1, wen2, wen3;

    // Check if write enable and read enable are both 1
    wire debug_wren;
    assign debug_wren = (wen && ren) ? 1'b0 : wen; 

    //*********** DATA IN - SPLIT ***********//
    assign data_in0 = data_in[7:0];
    assign data_in1 = data_in[15:8];
    assign data_in2 = data_in[23:16];
    assign data_in3 = data_in[31:24];

    //*********** INSTRUCTIONS OUT - SPLIT ***********//
    assign instr[7:0]   = (PC[20:2]<2048)? instr0:instr20;
    assign instr[15:8]  = (PC[20:2]<2048)? instr1:instr21;
    assign instr[23:16] = (PC[20:2]<2048)? instr2:instr22;
    assign instr[31:24] = (PC[20:2]<2048)? instr3:instr23;

    //*********** DATA OUT - SPLIT ***********//
    assign data_out[7:0]    = (address[20:2]<2048)?data_out0:data2_out0;
    assign data_out[15:8]   = (address[20:2]<2048)?data_out1:data2_out1;
    assign data_out[23:16]  = (address[20:2]<2048)?data_out2:data2_out2;
    assign data_out[31:24]  = (address[20:2]<2048)?data_out3:data2_out3;

    //*********** WEN SPLIT ***********//
    assign wen0 = (byte_select_vector[0] & debug_wren);
    assign wen1 = (byte_select_vector[1] & debug_wren);
    assign wen2 = (byte_select_vector[2] & debug_wren);
    assign wen3 = (byte_select_vector[3] & debug_wren);

    // BRAM_0 -> address bits [7:0]
    Gowin_DPB_program BRAM_0(
        .douta(instr0), //output [7:0] douta 
        .clka(clk), //input clka 
        .ocea(1'b1), //input ocea 
        .cea(1'b1), //input cea 
        .reseta(!reset), //input reseta 
        .wrea(1'b0), //input wrea
        .ada(PC), //input [10:0] ada 
        .dina(dina), //input [7:0] dina
        
        .doutb(data_out0), //output [7:0] doutb
        .clkb(clk), //input clkb
        .oceb(1'b1), //input oceb
        .ceb(1'b1), //input ceb
        .resetb(!reset), //input resetb
        .wreb((address[20:2]<2048)?wen0:0), //input wreb
        .adb(address), //input [10:0] adb
        .dinb(data_in0) //input [7:0] dinb
    );

    // BRAM_1 -> address bits [15:8]
    Gowin_DPB_program BRAM_1(
        .douta(instr1), //output [7:0] douta 
        .clka(clk), //input clka 
        .ocea(1'b1), //input ocea 
        .cea(1'b1), //input cea 
        .reseta(!reset), //input reseta 
        .wrea(1'b0), //input wrea
        .ada(PC), //input [10:0] ada 
        .dina(dina), //input [7:0] dina
        
        .doutb(data_out1), //output [7:0] doutb
        .clkb(clk), //input clkb
        .oceb(1'b1), //input oceb
        .ceb(1'b1), //input ceb
        .resetb(!reset), //input resetb
        .wreb((address[20:2]<2048)?wen1:0), //input wreb
        .adb(address), //input [10:0] adb
        .dinb(data_in1) //input [7:0] dinb
    );

    // BRAM_2 -> address bits [23:16]
    Gowin_DPB_program BRAM_2(
        .douta(instr2), //output [7:0] douta 
        .clka(clk), //input clka 
        .ocea(1'b1), //input ocea 
        .cea(1'b1), //input cea 
        .reseta(!reset), //input reseta 
        .wrea(1'b0), //input wrea
        .ada(PC), //input [10:0] ada 
        .dina(dina), //input [7:0] dina
        
        .doutb(data_out2), //output [7:0] doutb
        .clkb(clk), //input clkb
        .oceb(1'b1), //input oceb
        .ceb(1'b1), //input ceb
        .resetb(!reset), //input resetb
        .wreb((address[20:2]<2048)?wen2:0), //input wreb
        .adb(address), //input [10:0] adb
        .dinb(data_in2) //input [7:0] dinb
    );

    // BRAM_3 -> address bits [31:24]
    Gowin_DPB_program BRAM_3(
        .douta(instr3), //output [7:0] douta 
        .clka(clk), //input clka 
        .ocea(1'b1), //input ocea 
        .cea(1'b1), //input cea 
        .reseta(!reset), //input reseta 
        .wrea(1'b0), //input wrea
        .ada(PC), //input [10:0] ada 
        .dina(dina), //input [7:0] dina
        
        .doutb(data_out3), //output [7:0] doutb
        .clkb(clk), //input clkb
        .oceb(1'b1), //input oceb
        .ceb(1'b1), //input ceb
        .resetb(!reset), //input resetb
        .wreb((address[20:2]<2048)?wen3:0), //input wreb
        .adb(address), //input [10:0] adb
        .dinb(data_in3) //input [7:0] dinb
    );

        // BRAM_0 -> address bits [7:0]
    Gowin_DPB_program BRAM2_0(
        .douta(instr20), //output [7:0] douta 
        .clka(clk), //input clka 
        .ocea(1'b1), //input ocea 
        .cea(1'b1), //input cea 
        .reseta(!reset), //input reseta 
        .wrea(1'b0), //input wrea
        .ada(PC-2048), //input [10:0] ada 
        .dina(dina), //input [7:0] dina
        
        .doutb(data2_out0), //output [7:0] doutb
        .clkb(clk), //input clkb
        .oceb(1'b1), //input oceb
        .ceb(1'b1), //input ceb
        .resetb(!reset), //input resetb
        .wreb((address[20:2]<2048)?0:wen0), //input wreb
        .adb(address-2048), //input [10:0] adb
        .dinb(data_in0) //input [7:0] dinb
    );

    // BRAM_1 -> address bits [15:8]
    Gowin_DPB_program BRAM2_1(
        .douta(instr21), //output [7:0] douta 
        .clka(clk), //input clka 
        .ocea(1'b1), //input ocea 
        .cea(1'b1), //input cea 
        .reseta(!reset), //input reseta 
        .wrea(1'b0), //input wrea
        .ada(PC-2048), //input [10:0] ada 
        .dina(dina), //input [7:0] dina
        
        .doutb(data2_out1), //output [7:0] doutb
        .clkb(clk), //input clkb
        .oceb(1'b1), //input oceb
        .ceb(1'b1), //input ceb
        .resetb(!reset), //input resetb
        .wreb((address[20:2]<2048)?0:wen1), //input wreb
        .adb(address-2048), //input [10:0] adb
        .dinb(data_in1) //input [7:0] dinb
    );

    // BRAM_2 -> address bits [23:16]
    Gowin_DPB_program BRAM2_2(
        .douta(instr22), //output [7:0] douta 
        .clka(clk), //input clka 
        .ocea(1'b1), //input ocea 
        .cea(1'b1), //input cea 
        .reseta(!reset), //input reseta 
        .wrea(1'b0), //input wrea
        .ada(PC-2048), //input [10:0] ada 
        .dina(dina), //input [7:0] dina
        
        .doutb(data2_out2), //output [7:0] doutb
        .clkb(clk), //input clkb
        .oceb(1'b1), //input oceb
        .ceb(1'b1), //input ceb
        .resetb(!reset), //input resetb
        .wreb((address[20:2]<2048)?0:wen2), //input wreb
        .adb(address-2048), //input [10:0] adb
        .dinb(data_in2) //input [7:0] dinb
    );

    // BRAM_3 -> address bits [31:24]
    Gowin_DPB_program BRAM2_3(
        .douta(instr23), //output [7:0] douta 
        .clka(clk), //input clka 
        .ocea(1'b1), //input ocea 
        .cea(1'b1), //input cea 
        .reseta(!reset), //input reseta 
        .wrea(1'b0), //input wrea
        .ada(PC-2048), //input [10:0] ada 
        .dina(dina), //input [7:0] dina
        
        .doutb(data2_out3), //output [7:0] doutb
        .clkb(clk), //input clkb
        .oceb(1'b1), //input oceb
        .ceb(1'b1), //input ceb
        .resetb(!reset), //input resetb
        .wreb((address[20:2]<2048)?0:wen3), //input wreb
        .adb(address-2048), //input [10:0] adb
        .dinb(data_in3) //input [7:0] dinb
    );

endmodule
`endif