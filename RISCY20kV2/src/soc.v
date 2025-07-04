
`ifndef TESTBENCH
`include "config.vh"
`else
`include "../includes/config.vh"
`endif

`timescale 1ns/1ns
module top
(   
    input clk,
//    output reg [5:0] led,
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

//    input btn1,
//    input btn2,
    input btnDownL,
    input btnUpL,
    input btnLeftL,
    input btnRightL,

    input btnDownR,
    input btnUpR,
    input btnLeftR,
    input btnRightR

//    output [CS_WIDTH-1:0] O_psram_ck,    
//    output [CS_WIDTH-1:0] O_psram_ck_n,
//    inout [CS_WIDTH-1:0] IO_psram_rwds,
//    inout [DQ_WIDTH-1:0] IO_psram_dq,
//    output [CS_WIDTH-1:0] O_psram_reset_n,
//    output [CS_WIDTH-1:0] O_psram_cs_n 
);
    reg [5:0] led;
    //WP (write protection) is active low (_n), meaning that when it's driven low, it prevents writing; when high, it allows write operations.
    assign flashWp = 1'b1;
    //HOLD asserted (low), the device ignores the SPI clock, allowing communication to be paused without terminating the session.
    assign flashHold = 1'b1;


    reg cpuclk=1;
    wire clkout;

    wire CLK_PIX;
    assign clkout=clk;

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

    // used to debug cpu faults
    wire [2:0] debug_error;
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
                .debug_error(debug_error),
                .byte_select(byte_select),
                .software_interrupt(msw_irq),
                .timer_interrupt(mtimer_irq),
                .external_interrupt(mext_irq),
                .memReady(memReady)
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
    wire memReady;
    wire debug;

    // program_memory
    wire [31:0] second_stage_instr;
    wire [31:0] second_stage_mem_out;
    wire second_stage_mem_ren;
    wire second_stage_mem_wen;

    wire [31:0] program_instr;
    wire [31:0] program_mem_out;
    wire program_mem_ren;
    wire program_mem_wen;
    wire uart_ren;
    wire uart_wen;
    wire [31:0] uart_data_out;
    wire usb_ren;
    wire [31:0] usb_data_out;

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
            .second_stage_mem_out(second_stage_mem_out), // ADD
//            .usb_out(usb_data_out),
            .clint_data_out(clint_data_out),

            .program_instr(program_instr),
            .second_stage_instr(second_stage_instr),
            
            .clint_ren(clint_ren),
            .clint_wen(clint_wen),
            .mem_ren(mem_ren),
            .mem_wen(mem_wen),
            .program_mem_ren(program_mem_ren),  // ADD
            .program_mem_wen(program_mem_wen),  // ADD
            .second_stage_mem_ren(second_stage_mem_ren),  // ADD
            .second_stage_mem_wen(second_stage_mem_wen),  // ADD
            .screen_ren(screen_ren),
            .screen_wen(screen_wen) ,
            .flash_ren(flash_ren),
            .flash_wen(flash_wen),
            .uart_ren(uart_ren),
            .uart_wen(uart_wen),
            .btn_ren(btn_ren),
//            .usb_ren(usb_ren),

            .data_out(data_read),
            .instr_out(instr)
    );
    wire clint_ren;
    wire clint_wen;
    wire [31:0] clint_data_out;
    wire msw_irq;
    wire mtimer_irq;
    wire mext_irq=0;

    clint clint_inst(
        .clk(cpu_clk),
        .reset(reset),
        .addr(data_addr),
        .wdata(data_to_write),
        .write_enable(clint_wen),
        .rdata(clint_data_out),
        .msw_irq(msw_irq),
        .mtimer_irq(mtimer_irq)
    );

    memory mem( .clk(cpu_clk),
            .reset(reset),
            .PC(PC[24:2]),
            .instr(boot_instr),  // BOOTLOADER
            .data_addr(data_addr[24:2]),
            .ren(mem_ren),
            .wen(mem_wen),
            .data_in(data_to_write),
            .data_out(boot_data_out),
            .byte_select_vector(byte_select),
            .ready(memReady)
    );
    wire btn_ren;
    wire btn_out;
    buttonModule bm(
        .clk(cpu_clk),
        .btnDownL(btnDownL),
        .btnUpL(btnUpL),
        .btnLeftL(btnLeftL),
        .btnRightL(btnRightL),
        .btnDownR(btnDownR),
        .btnUpR(btnUpR),
        .btnLeftR(btnLeftR),
        .btnRightR(btnRightR),

        .ren(btn_ren),
        .address(data_addr[7:0]),
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
    `ifndef TESTBENCH
    programMemory #(
        .NUM_BRAMS(1)
    ) SecondStageRAM( 
        .clk(cpu_clk),
        .reset(reset),
        .PC(PC[30:2]),
        .address(data_addr[30:2]),
        .ren(second_stage_mem_ren),
        .wen(second_stage_mem_wen),
        .data_in(data_to_write),
        .byte_select_vector(byte_select),
        .instr(second_stage_instr),
        .data_out(second_stage_mem_out)
    );

    programMemory #(
        .NUM_BRAMS(6)
    )RAM( 
        .clk(cpu_clk),
        .reset(reset),
        .PC(PC[30:2]),
        .address(data_addr[30:2]),
        .ren(program_mem_ren),
        .wen(program_mem_wen),
        .data_in(data_to_write),
        .byte_select_vector(byte_select),
        .instr(program_instr),
        .data_out(program_mem_out)
    );
    `else
    memorySim #(
        .file_location("../includes/secondStage.hex")
    ) SecondStageRAM( .clk(cpu_clk),
            .reset(reset),
            .PC(PC[24:2]),
            .instr(second_stage_instr),  // BOOTLOADER
            .data_addr(data_addr[24:2]),
            .ren(second_stage_mem_ren),
            .wen(second_stage_mem_wen),
            .data_in(data_to_write),
            .data_out(second_stage_mem_out),
            .byte_select_vector(byte_select),
            .ready(memReady)
    );
    memorySim #(
        .file_location("../includes/RAM.hex")
    ) RAM( .clk(cpu_clk),
            .reset(reset),
            .PC(PC[24:2]),
            .instr(program_instr),  // BOOTLOADER
            .data_addr(data_addr[24:2]),
            .ren(program_mem_ren),
            .wen(program_mem_wen),
            .data_in(data_to_write),
            .data_out(program_mem_out),
            .byte_select_vector(byte_select),
            .ready(memReady)
    );
    `endif
    //**********************************************************************************************//
    //                                         HDMI SCREEN                                           //
    //**********************************************************************************************//

    `ifndef TESTBENCH
    Gowin_rPLL_800vga slower_clock(
        .clkout(CLK_PIX), //13.5Mhz
        .clkin(clk)       //27Mhz
    );
    `else
    assign CLK_PIX = clk;
    `endif
    wire [4:0]R_tmp;
    wire [5:0]G_tmp;
    wire [4:0]B_tmp;

    wire [13:0] xcursor, ycursor;
    wire is_blank;

    PPU ppu_inst (
        .clk(CLK_PIX),
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

	VGAMod	VGA (
		.rst      (reset),
        .clkFpga  (clk),
		.clkPixel (CLK_PIX),
        

		.RGB_Activate (LCD_DEN),
		.H_Sync       (LCD_HYNC),
    	.V_Sync       (LCD_SYNC),
        .debug_error(debug_error),
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
//     `else
    `ifdef TESTBENCH
   textTest text(
                   .clk(clk),
                   .reset(reset),
                   .pixelAddress(pixelAddress),
                   .char_write_addr(data_addr[15:1]),
                   .ren(screen_ren),
                   .wen(screen_wen),
                   .char_write((byte_select[0] == 1'b1)?data_to_write[7:0]:(byte_select[1] == 1'b1)?data_to_write[15:8]:(byte_select[2] == 1'b1)?data_to_write[23:16]:data_to_write[31:24]),
                   .pixelData(pixelData),
                   .error(error)
   );
   `endif
//    screen scr(
//        .clk(clk),
//        .pixelData(pixelData),
//        .pixelAddress(pixelAddress),
//        .io_sda(io_sda),  // I2C data line (bi-directional)
//        .io_scl(io_scl)  // I2C clock line
//    );
//     `endif

    uartController uart_controller (
        .clk(cpu_clk),
        .reset(reset),
        .ren(uart_ren),
        .wen(uart_wen),
        .uart_rx(uart_rx),
        .uart_tx(uart_tx),
        .address(data_addr[2:0]),
        .word_in(data_to_write),
        .data_out(uart_data_out)
    );
    // uart uart_controller (
    //     .clk(cpu_clk),
    //     .btn1(btnDownL),
    //     .uart_rx(uart_rx),
    //     .uart_tx(uart_tx)
    // );




//   **********************************************************************************************//
//                                         CPU TIMER                                               //
//   **********************************************************************************************//


    wire [31:0] counter1M;
    wire [31:0] counter50M;
    cpuTimer #(.DIVISION(50)) counter1mhz
    (
        .clk(cpu_clk),
        .reset(reset),
        .counter(counter1M)
    );
    cpuTimer #(.DIVISION(1)) counter50mhz
    (
        .clk(cpu_clk),
        .reset(reset),
        .counter(counter50M)
    );
    reg [2:0] state=0;
    localparam STATE_INIT = 0;
    localparam STATE_WAITING_BUTTON = 1;
    localparam STATE_DEBOUNCE = 2;
    localparam STATE_START=3;
    reg [22:0] txCounter = 0;
    reg [4:0]holdWEN=0;
    reg [23:0] counter=0;

    always@(posedge clkout) begin
        led <= PC[5:0];
        counter <= counter + 1;
        case ( state)
            STATE_INIT: begin
                reset <= 0;
                state <= STATE_START;
            end
            STATE_WAITING_BUTTON: begin
                state <= STATE_INIT;
            end
            STATE_DEBOUNCE: begin
                cpuclk<=0;

                txCounter <= txCounter + 1;
                if (txCounter == 22'hFF) begin
                    txCounter <=0;
                    state <= STATE_START;
                end else
                    state <= STATE_DEBOUNCE;
            end
            STATE_START: begin
                cpuclk<=1;
                reset <= 1;
//                 if (resetn == 1) begin
//                     state <= STATE_DEBOUNCE;
//                     txCounter <= 0;
//                     reset <=0;
//                 end
            end
        endcase
        
    end


endmodule

module Reset_Sync (
 input clk,
 input ext_reset,
 output resetn
);

 reg [3:0] reset_cnt = 0;
 
 always @(posedge clk or negedge ext_reset) begin
     if (~ext_reset)
         reset_cnt <= 4'b0;
     else
         reset_cnt <= reset_cnt + !resetn;
 end
 
 assign resetn = &reset_cnt;

endmodule