`include "config.vh"
`timescale 1ns/1ns
module top
(   
    input clk,
    output reg [5:0] led,
    inout io_sda,
    output io_scl,
    output			LCD_CLK,
	output			LCD_HYNC,
	output			LCD_SYNC,
	output			LCD_DEN,
	output	[4:0]	LCD_R,
	output	[5:0]	LCD_G,
	output	[4:0]	LCD_B,
    input btn1,
    input btn2
);
    reg cpuclk=1;
    wire clkout;

    wire		CLK_PIX;
    assign clkout=clk;
//    Gowin_rPLL pll(
//        .clkout(clkout), //output clkout
//        .clkin(clk) //input clkin
//    );


    reg btn1reg;
    reg btn2reg;
    reg clk_btn=0;
    wire cpu_clk;
    assign cpu_clk=(clk_btn==1'b1)?cpuclk:clkout;
    wire overflow;
    reg reset;
    wire [31:0] PC;
    wire [31:0] instr;
    wire [31:0] data_addr;
    wire ren;
    wire wen;
    wire [31:0] data_to_write;
    wire [31:0] data_read;
    wire [3:0] byte_select; 
    cpu cpu_1(	.clock(cpu_clk),
                .reset(reset),
                .overflow(overflow),
                .PC_out(PC),
                .instr_in(instr),
                .data_addr(data_addr),
                .ren(ren),
                .wen(wen),
                .data_out(data_to_write),
                .data_in(data_read),
                .byte_select(byte_select),
                .memReady(memReady)
    );
    wire mem_ren;
    wire mem_wen;
    wire screen_ren;
    wire screen_wen;
    wire [31:0]memory_out;
    wire debug;
    bus bu( .clk(cpu_clk),
            .PC(PC),
            .data_addr(data_addr),
            .ren(ren),
            .wen(wen),
            .btn_out(btn_out),
            .memory_out(memory_out),
            .mem_ren(mem_ren),
            .mem_wen(mem_wen),
            .screen_ren(screen_ren),
            .screen_wen(screen_wen) ,
            .btn_ren(btn_ren),
            .data_out(data_read)
    );
    wire memReady;
    memory mem( .clk(cpu_clk),
            .reset(reset),
            .PC(PC[`TEXT_BITS-1:2]),
            .instr(instr),
            .data_addr(data_addr[`DATA_BITS-1:2]),
            .ren(mem_ren),
            .wen(mem_wen),
            .data_in(data_to_write),
            .data_out(memory_out),
            .byte_select_vector(byte_select),
            .ready(memReady)
    );
    wire btn_ren;
    wire btn_out;
    buttonModule bm(
        .clk(cpu_clk),
        .btn1(btn1),
        .btn2(btn2),
        .ren(btn_ren),
        .address(data_addr),
        .data_out(btn_out)
    );
    wire [9:0] pixelAddress;
    wire [7:0] pixelData;
    wire error;
    
    //**********************************************************************************************//
    //                                         VGA SCREEN                                           //
    //**********************************************************************************************//
    


    // Gowin_rPLL slower_clock(
    //     .clkout(CLK_PIX), //13.5Mhz
    //     .clkin(clk)       //27Mhz
    // );

    // wire [15:0] data_selected;
    // assign data_selected = (byte_select[1:0] == 2'b11) ? data_to_write[15:0] : data_to_write[31:16]; 

	// VGAMod	D1
	// (
	// 	.rst     ( reset),
    //     .clkFpga  (clk),
	// 	.clkPixel (CLK_PIX),
        
    //     .wen        (screen_wen),
    //     .wdataText  (data_selected[7:0]),
    //     .wdataAttr  (data_selected[15:8]),
    //     .waddr      (data_addr[11:1]),

	// 	.RGB_Activate (LCD_DEN),
	// 	.H_Sync       (LCD_HYNC),
    // 	.V_Sync       (LCD_SYNC),

	// 	.RGB_B (LCD_B),
	// 	.RGB_G (LCD_G),
	// 	.RGB_R (LCD_R)  
	// );

    // //**********************************************************************************************//
    // //                                                                                              //
    // //**********************************************************************************************//

	// assign		LCD_CLK		=	CLK_PIX;
    
    
   textEngine text(
                   .clk(clk),
                   .reset(reset),
                   .pixelAddress(pixelAddress),
                   .char_write_addr(data_addr[5:0]),
                   .ren(screen_ren),
                   .wen(screen_wen),
                   .char_write((byte_select[0] == 1'b1)?data_to_write[7:0]:(byte_select[1] == 1'b1)?data_to_write[15:8]:(byte_select[2] == 1'b1)?data_to_write[23:16]:data_to_write[31:24]),
                   .pixelData(pixelData),
                   .error(error)
   );
   screen scr(
       .clk(clk),
       .pixelData(pixelData),
       .pixelAddress(pixelAddress),
       .io_sda(io_sda),  // I2C data line (bi-directional)
       .io_scl(io_scl)  // I2C clock line
   );
    // SSD ssd(
    //     .clk(clk),
    //     .data(PC[17:2]),
    //     .D1(D1), 
    //     .D2(D2), 
    //     .D3(D3), 
    //     .D4(D4),
    //     .Dp(Dp), 
    //     .A(A), 
    //     .B(B), 
    //     .C(C), 
    //     .D(D), 
    //     .E(E), 
    //     .F(F), 
    //     .G(G)
    // );

    reg [2:0] state=0;
    localparam STATE_INIT = 0;
    localparam STATE_WAITING_BUTTON = 1;
    localparam STATE_DEBOUNCE = 2;
    localparam STATE_START=3;
    reg [22:0] txCounter = 0;
    reg [4:0]holdWEN=0;
    reg [23:0] counter=0;

    always@(posedge clkout) begin
        led[4:0] <= ~PC[6:2];
        led[5] <= debug;
        counter <= counter + 1;
        case ( state)
            STATE_INIT: begin
                reset <= 0;
                // `ifndef SYNTHESIS
                    // state <= STATE_DEBOUNCE;
                   state <= STATE_START;
                // `else
//                if(btn1==0)
//                begin
//                    state <=STATE_DEBOUNCE;
//                    reset<=1;
//                    clk_btn<=0;
//                end
//                if(btn2==0)
//                begin
//                    state <=STATE_DEBOUNCE;
//                    reset<=1;
//                    clk_btn<=1;
//                end
                // `endif
            end
            STATE_WAITING_BUTTON: begin
                if (btn1 == 0) begin
                    reset <= 1;
                    state <= STATE_DEBOUNCE;
                    txCounter <= 0;
                end
            end
            STATE_DEBOUNCE: begin
                cpuclk=0;

                txCounter <= txCounter + 1;
                if(txCounter ==22'hFF)
                begin
                // btn1reg<=1;
                // btn2reg<=1;
                end
                if (txCounter == 22'hFFFF) begin
                    txCounter <=0;
                    if (btn1 == 1&&btn2==1) 
                        state <= STATE_START;
                end else
                    state <= STATE_DEBOUNCE;
            end
            STATE_START: begin
                cpuclk<=1;
                // btn1reg<=1;
                // btn2reg<=1;
                reset <= 1;
                if (btn1 == 0) begin
                    // btn1reg<=0;
                    state <= STATE_DEBOUNCE;
                    txCounter <= 0;
                end
                if (btn2 == 0) begin
                    // btn2reg<=0;
                    state <= STATE_DEBOUNCE;
                    txCounter <= 0;
                end
            end
        endcase
        
    end



endmodule