`include "config.vh"
`timescale 1ns/1ns
module top
(   
    input clk,
    output reg [5:0] led,
//    inout io_sda,
//    output io_scl,
    output			LCD_CLK,
	output			LCD_HYNC,
	output			LCD_SYNC,
	output			LCD_DEN,
	output	[4:0]	LCD_R,
	output	[5:0]	LCD_G,
	output	[4:0]	LCD_B,

    input flashMiso,
    output flashClk,
    output flashMosi,
    output flashCs,

    input uart_rx,
    output uart_tx,

    input btn1,
    input btn2,
    input btnDownL,
    input btnUpL,
    input btnLeftL,
    input btnRightL,

    input btnDownR,
    input btnUpR,
    input btnLeftR,
    input btnRightR,

    output [CS_WIDTH-1:0] O_psram_ck,    
    output [CS_WIDTH-1:0] O_psram_ck_n,
    inout [CS_WIDTH-1:0] IO_psram_rwds,
    inout [DQ_WIDTH-1:0] IO_psram_dq,
    output [CS_WIDTH-1:0] O_psram_reset_n,
    output [CS_WIDTH-1:0] O_psram_cs_n 
);
    parameter  DQ_WIDTH = 8*2;
    parameter  CS_WIDTH = 1*2;

    reg cpuclk=1;
    wire clkout;

    wire		CLK_PIX;
    assign clkout=clk;


    reg btn1reg;
    reg btn2reg;
    reg clk_btn=0;
    wire cpu_clk;
    assign cpu_clk=(clk_btn==1'b1)?cpuclk:clkout;
    wire overflow;
    reg reset_soc;
    wire reset;
//    assign reset = btn_reset;
     assign reset = reset_soc;
    wire [31:0] PC;
    wire [31:0] instr;
    wire [31:0] data_addr;
    wire ren;
    wire wen;
    wire [31:0] data_to_write;
    wire [31:0] data_read;
    wire [3:0] byte_select; 

    //**********************************************************************************************//
    //                                              CPU                                             //
    //**********************************************************************************************//

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
                .memReady(ready)
    );
    
    //**********************************************************************************************//
    //                                              BUS                                             //
    //**********************************************************************************************//

    wire mem_ren;
    wire mem_wen;
    wire screen_ren;
    wire screen_wen;
    wire [31:0]boot_data_out;
    wire [31:0] boot_instr;
    wire mem_ready;
    wire debug;

    // program_memory
    wire [31:0] program_instr;
    wire [31:0] program_mem_out;
    wire program_mem_ren;
    wire program_mem_wen;
    wire uart_ren;
    wire [31:0] uart_data_out;



    bus bu( .clk(cpu_clk),
            .PC(PC),
            .data_addr(data_addr),
            .ren(ren),
            .wen(wen),
            .btn_out(btn_out),
            .flash_out(flash_data_out),
            .uart_out(uart_data_out),
            .memory_out(boot_data_out),
            .boot_instr(boot_instr),
            .counter27M(counter27M),
            .counter1M(counter1M),
            .program_mem_out(program_mem_out), // ADD
            .ram_out(ram_data_out),
            .program_instr(program_instr),
            .stall(ready),
            
            .mem_ren(mem_ren),
            .mem_wen(mem_wen),
            .ram_ren(ram_ren),
            .ram_wen(ram_wen),
            .program_mem_ren(program_mem_ren),  // ADD
            .program_mem_wen(program_mem_wen),  // ADD
            .screen_ren(screen_ren),
            .screen_wen(screen_wen) ,
            .flash_ren(flash_ren),
            .flash_wen(flash_wen),
            .uart_ren(uart_ren),
            .btn_ren(btn_ren),
            .data_out(data_read),
            .instr_out(instr)
    );


    
    memory mem( .clk(cpu_clk),
            .reset(reset),
            .PC(PC[`TEXT_BITS-1:2]),
            .instr(boot_instr),  // BOOTLOADER
            .data_addr(data_addr[`DATA_BITS-1:2]),
            .ren(mem_ren),
            .wen(mem_wen),
            .data_in(data_to_write),
            .data_out(boot_data_out),
            .byte_select_vector(byte_select),
            .ready(mem_ready)
    );
    wire btn_ren;
    wire btn_out;
    wire btn_reset;
    buttonModule bm(
        .clk(cpu_clk),
        .btnDown(btnDownL&btnDownR),
        .btnUp(btnUpL&btnUpR),
        .btnLeft(btnLeftL&btnLeftR),
        .btnRight(btnRightL&btnRightR),
        .ren(btn_ren),
        .address(data_addr[7:0]),
        // .reset(btn_reset),
        .data_out(btn_out)
    );
    wire flash_ren;
    wire flash_wen;
    wire [31:0] flash_data_out;
    flashController flashController(
        .clk(cpu_clk),
        .reset(reset),
        .ren(flash_ren),
        .wen(flash_wen),
        .flashMiso(flashMiso),
        .flashClk(flashClk),
        .flashMosi(flashMosi),
        .flashCs(flashCs),
        .data_in(data_to_write),
        .address(data_addr),
        .data_out(flash_data_out)
    );

    wire [9:0] pixelAddress;
    wire [7:0] pixelData;
    wire error;


    //**********************************************************************************************//
    //                                       PROGRAM MEMORY                                         //
    //**********************************************************************************************//
    programMemory programMemory_inst( 
        .clk(cpu_clk),
        .reset(reset),
        .PC(PC[31:2]),
        .address(data_addr[31:2]),
        .ren(program_mem_ren),
        .wen(program_mem_wen),
        .data_in(data_to_write),
        .byte_select_vector(byte_select),
        .instr(program_instr),
        .data_out(program_mem_out)
    );
    
    //**********************************************************************************************//
    //                                         RAM MEMORY                                           //
    //**********************************************************************************************//

    wire ram_ren;
    wire ram_wen;
    wire [31:0] ram_data_out;
    wire ram_ready;


    ramData ramData_inst( 
    .clk(cpu_clk),
    .reset(reset),
    .PC(PC[31:2]),
    .address(data_addr[31:0]),
    .ren(ram_ren),
    .wen(ram_wen),
    .data_in(data_to_write),
    .byte_select_vector(byte_select),
    .instr(),
    .data_out(ram_data_out),
    .cpu_stall(ram_ready),
    .O_psram_ck(O_psram_ck), 
    .O_psram_ck_n(O_psram_ck_n),
    .IO_psram_rwds(IO_psram_rwds),
    .IO_psram_dq(IO_psram_dq),
    .O_psram_reset_n(O_psram_reset_n),
    .O_psram_cs_n(O_psram_cs_n)
    );
 
    wire ready;
    assign ready = ram_ready & mem_ready;

    //**********************************************************************************************//
    //                                         VGA SCREEN                                           //
    //**********************************************************************************************//
    `ifndef TESTBENCH
    Gowin_rPLL slower_clock(
        .clkout(CLK_PIX), //13.5Mhz
        .clkin(clk)       //27Mhz
    );


    wire [4:0]R_tmp;
    wire [5:0]G_tmp;
    wire [4:0]B_tmp;

    wire [13:0] xcursor, ycursor;
    wire is_blank;

    PPU ppu_inst (
        .clk(clk),
        .clk_cpu(clk),
        .reset(reset),
        // .ren(screen_ren),
        .wen(screen_wen),
        .address(data_addr[15:0]),
        .data_in(data_to_write),
        .byte_select(byte_select),
        .xcursor(xcursor),
        .ycursor(ycursor),
        .is_blank(is_blank),
        .data_out(),
        .RGB_R(R_tmp),
        .RGB_G(G_tmp),
        .RGB_B(B_tmp)

    );

	VGAMod	D1 (
		.rst      (reset),
        .clkFpga  (clk),
		.clkPixel (CLK_PIX),
        

		.RGB_Activate (LCD_DEN),
		.H_Sync       (LCD_HYNC),
    	.V_Sync       (LCD_SYNC),

        .R_tmp(R_tmp),
        .G_tmp(G_tmp),
        .B_tmp(B_tmp),
        .is_blank(is_blank),

        .PixelCtr(xcursor),
        .LineCtr(ycursor),

		.RGB_B (LCD_B),
		.RGB_G (LCD_G),
		.RGB_R (LCD_R)  
	);

//    **********************************************************************************************//
//                                         I2C Screen                                               //
//    **********************************************************************************************//

	assign		LCD_CLK		=	CLK_PIX;
    `else
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
    `endif

// uartController uart_controller (
//     .clk(cpu_clk),
//     .reset(reset),
//     .ren(uart_ren),
//     .wen(1'b0),
//     .uart_rx(uart_rx),
//     .uart_tx(uart_tx),
//     .address(data_addr[1:0]),
//     .data_out(uart_data_out)
// );



//   **********************************************************************************************//
//                                         CPU TIMER                                               //
//   **********************************************************************************************//


    wire [31:0] counter1M;
    cpuTimer #(.DIVISION(27)) counter1mhz
    (
        .clk(cpu_clk),
        .reset(reset),
        .counter(counter1M)
    );
    wire [31:0] counter27M;
    cpuTimer #(.DIVISION(1)) counter27mhz
    (
        .clk(cpu_clk),
        .reset(reset),
        .counter(counter27M)
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
                reset_soc <= 0;
                // `ifndef SYNTHESIS
                    // state <= STATE_DEBOUNCE;
                   state <= STATE_START;
                // `else
//                if(btn1==0)
//                begin
//                    state <=STATE_DEBOUNCE;
//                    reset_soc<=1;
//                    clk_btn<=0;
//                end
//                if(btn2==0)
//                begin
//                    state <=STATE_DEBOUNCE;
//                    reset_soc<=1;
//                    clk_btn<=1;
//                end
                // `endif
            end
            STATE_WAITING_BUTTON: begin
                if (btn1 == 0) begin
                    reset_soc <= 1;
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
                reset_soc <= 1;
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