module framebuffer(

    input sdram_clk,
    input vga_clk,
    input reset_n,
    input [13:0] xcursor,
    input [13:0] ycursor,
    input [31:0] vga_data_in,
    input ram_ack,
    output reg vga_ren,
    output reg [31:0] vga_addr, // 32 bits address
    input screen_change,

	output reg         [4:0]   B_tmp,
	output reg         [5:0]   G_tmp,
	output reg         [4:0]   R_tmp
);

parameter MAX_WIDTH=14'd800;
parameter MAX_HEIGHT=14'd480;

typedef enum logic [1:0] {
    IDLE   = 2'b00,
    START_READ = 2'b01,
    AWAIT_ACK = 2'b10,
    READ_DATA = 2'b11
} state_t;

state_t state, next_state;
reg [13:0] ycursor_sync1, ycursor_sync2;
reg ram_ack_reg;

// Synchronize ycursor and frame_buffer_addr to sdram_clk domain
always @(posedge sdram_clk or negedge reset_n) begin
    if (!reset_n) begin
        ycursor_sync1 <= 14'b0;
        ycursor_sync2 <= 14'b0;
        ram_ack_reg <= 1'b0;
    end else begin
        ycursor_sync1 <= ycursor;
        ycursor_sync2 <= ycursor_sync1;
        ram_ack_reg <= ram_ack;
    end
end
reg [10:0] ptr;
reg [13:0] old_y_cursor;
reg [10:0] current_line_address;

localparam ADDRESS_DIF = MAX_WIDTH/2;

always@(posedge sdram_clk or negedge reset_n)
begin
    if(reset_n == 1'b0)begin
        vga_addr <= 32'b0;
        vga_ren <= 1'b0;
        state <= IDLE;
        next_state <= IDLE;
        old_y_cursor <= 14'b0;
        ptr <= 0;
    end
    else begin
        case (state)
        IDLE: begin
            ptr <= 0;
            if( ycursor_sync2 != old_y_cursor && screen_change) begin
                vga_ren <= 1'b1;
                state <= AWAIT_ACK;
                next_state <= START_READ;
                vga_addr <= 32'b0;
                if(ycursor_sync2 >= MAX_HEIGHT)
                begin
                    current_line_address <= 0;
                end
                else begin
                    current_line_address <= ycursor_sync2+1;
                    vga_addr <= ((ycursor_sync2+1)*ADDRESS_DIF);
                end
                old_y_cursor <= ycursor_sync2;
                ptr <= 0;
            end
        end
        START_READ: begin
            ptr <= ptr + 1;
            // vga_data[((ptr)*32)+:32] <= vga_data_in;
            if(!ram_ack)begin
                if(ptr<(MAX_WIDTH/2))begin
                    vga_ren <= 1'b1;
                    vga_addr <= ptr+1 + (current_line_address*ADDRESS_DIF);
                    state <= AWAIT_ACK;
                    next_state <= START_READ;
                end
                else begin
                    state <= IDLE;
                end
            end
        end
        AWAIT_ACK: begin
            if(ram_ack) begin
                // vga_data[((ptr)*32)+:32] <= vga_data_in;
                ptr <= ptr + 1;
                vga_ren <= 1'b0;
                state <= next_state;
            end
        end
        READ_DATA: begin
            state <= IDLE;
        end
        endcase
    end
end

wire [31:0] pixel;
wire bram_wen = ram_ack | ram_ack_reg;
wire current_line_read = (ycursor>MAX_HEIGHT)?0:(ycursor[0])?1024:0; // go to new line
wire current_line_write = (ycursor[0])?0:1024; // go to new line

Gowin_DPB_program BRAM_0(
    .douta(pixel[7:0]), //output [7:0] douta 
    .clka(vga_clk), //input clka 
    .ocea(1'b1), //input ocea 
    .cea(1'b1), //input cea 
    .reseta(!reset_n), //input reseta 
    .wrea(1'b0), //input wrea
    .ada(xcursor[10:1]+current_line_read), //input [10:0] ada 
    .dina('b0), //input [7:0] dina
    
    .doutb(), //output [7:0] doutb
    .clkb(sdram_clk), //input clkb
    .oceb(1'b1), //input oceb
    .ceb(1'b1), //input ceb
    .resetb(!reset_n), //input resetb
    .wreb(bram_wen), //input wreb
    .adb(ptr+current_line_write), //input [10:0] adb
    .dinb(vga_data_in[7:0]) //input [7:0] dinb
);
Gowin_DPB_program BRAM_1(
    .douta(pixel[15:8]), //output [7:0] douta 
    .clka(vga_clk), //input clka 
    .ocea(1'b1), //input ocea 
    .cea(1'b1), //input cea 
    .reseta(!reset_n), //input reseta 
    .wrea(1'b0), //input wrea
    .ada(xcursor[10:1]+current_line_read), //input [10:0] ada 
    .dina('b0), //input [7:0] dina
    
    .doutb(), //output [7:0] doutb
    .clkb(sdram_clk), //input clkb
    .oceb(1'b1), //input oceb
    .ceb(1'b1), //input ceb
    .resetb(!reset_n), //input resetb
    .wreb(bram_wen), //input wreb
    .adb(ptr+current_line_write), //input [10:0] adb
    .dinb(vga_data_in[15:8]) //input [7:0] dinb
);
Gowin_DPB_program BRAM_2(
    .douta(pixel[23:16]), //output [7:0] douta 
    .clka(vga_clk), //input clka 
    .ocea(1'b1), //input ocea 
    .cea(1'b1), //input cea 
    .reseta(!reset_n), //input reseta 
    .wrea(1'b0), //input wrea
    .ada(xcursor[10:1]+current_line_read), //input [10:0] ada 
    .dina('b0), //input [7:0] dina
    
    .doutb(), //output [7:0] doutb
    .clkb(sdram_clk), //input clkb
    .oceb(1'b1), //input oceb
    .ceb(1'b1), //input ceb
    .resetb(!reset_n), //input resetb
    .wreb(bram_wen), //input wreb
    .adb(ptr+current_line_write), //input [10:0] adb
    .dinb(vga_data_in[23:16]) //input [7:0] dinb
);
Gowin_DPB_program BRAM_3(
    .douta(pixel[31:24]), //output [7:0] douta 
    .clka(vga_clk), //input clka 
    .ocea(1'b1), //input ocea 
    .cea(1'b1), //input cea 
    .reseta(!reset_n), //input reseta 
    .wrea(1'b0), //input wrea
    .ada(xcursor[10:1]+current_line_read), //input [10:0] ada 
    .dina('b0), //input [7:0] dina
    
    .doutb(), //output [7:0] doutb
    .clkb(sdram_clk), //input clkb
    .oceb(1'b1), //input oceb
    .ceb(1'b1), //input ceb
    .resetb(!reset_n), //input resetb
    .wreb(bram_wen), //input wreb
    .adb(ptr+current_line_write), //input [10:0] adb
    .dinb(vga_data_in[31:24]) //input [7:0] dinb
);

always_comb begin
    if(xcursor[0])begin
        B_tmp = pixel[4:0];
        G_tmp = pixel[10:5];
        R_tmp = pixel[15:11];
    end
    else begin
        B_tmp = pixel[20:16];
        G_tmp = pixel[26:21];
        R_tmp = pixel[31:27];
    end
end

endmodule