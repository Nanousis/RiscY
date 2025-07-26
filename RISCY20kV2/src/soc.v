
`ifndef TESTBENCH
`include "config.vh"
`else
`include "../includes/config.vh"
`endif

`timescale 1ns/1ns
module top
(   
    // inferred ports connecting to SDRAM
    output O_sdram_clk,
    output O_sdram_cke,
    output O_sdram_cs_n,
    output O_sdram_cas_n,
    output O_sdram_ras_n,
    output O_sdram_wen_n,
    inout [31:0] IO_sdram_dq,
    output [10:0] O_sdram_addr,
    output [1:0] O_sdram_ba,
    output [3:0] O_sdram_dqm,

    input clk,
    `ifdef TESTBENCH
    input vga_clk,
    input sdram_clk,
    `endif
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
    wire [31:0] PC_IF2;
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
                .PC_IF2_out(PC_IF2),
                .instr_stall(icache_stall),
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
                // this should not be like that.
                .memReady(bus_ready & ~icache_stall)
    );
    
    wire icache_stall;
    wire icache_ren;
    wire [31:0] icache_addr;
    wire [31:0] icache_instr;

    wire icache_ack;
    i_cache u_i_cache (
        .cpu_clk(cpu_clk),
        .sdram_clk(sdram_clk),
        .reset_n(reset),
        .pc_if1(PC),
        .pc_if2(PC_IF2),
        .sdram_in(sdram_data_out),
        .sdram_ack(icache_ack),

        .stall(icache_stall), 
        .icache_ren(icache_ren),
        .icache_addr(icache_addr),
        .instr_out(icache_instr)
    );

    //**********************************************************************************************//
    //                                              BUS                                             //
    //**********************************************************************************************//
    wire bus_ready;

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
            .sdram_data_out(sdram_interface_data_out),

            .sdram_instr(icache_instr),
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
            .sdram_ren(sdram_ren),
            .sdram_wen(sdram_wen),
//            .usb_ren(usb_ren),

            .data_out(data_read),
            .instr_out(instr),
            // data to write
            .data_to_write(data_to_write),
            .data_to_write_reg(sdram_data_in),
            // byte select vector
            .byte_select_vector(byte_select),
            .data_mask_reg(),
            .address_reg(),

            // ready signals
            .memReady(memReady),
            .sdram_ready(sdram_interface_ready),
            .bus_ready(bus_ready)
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
    
    `ifndef TESTBENCH
    // wires to 'sdram_controller'
    wire sdram_clk;
    wire rpll_lock;

    Gowin_rPLL_fast_sdram rPLL_sdram (
        .clkin(cpu_clk),  // 27 MHz
        .clkout(sdram_clk),  // 108 MHz
        .lock(rpll_lock)
    );
    `endif
    wire sdram_ren;
    wire sdram_wen;
    wire sdram_ren_internal;
    wire sdram_wen_internal;
    wire [31:0] sdram_data_in;
    wire [31:0] sdram_data_out;
    wire [31:0] sdram_interface_to_write;
    wire [31:0] sdram_interface_data_out;
    wire [31:2] sdram_addr;
    wire [3:0] sdram_byte_select_vector;
    reg [7:0] sdram_len=0;
    wire sdram_ready;
    wire sdram_interface_ready;
    wire interface_ack;
    wire [31:0] sdram_instr;
    sdram_interface sdram_interface_init(
        .sdram_clk(sdram_clk),
        .cpu_clk(cpu_clk),
        .reset_n(reset),
        .data_in(data_to_write),
        .address(data_addr[25:2]),
        .pc(PC),
        .byte_select_vector(byte_select),
        .ram_ack(interface_ack),
        .cpu_ren(sdram_ren),
        .cpu_wen(sdram_wen),
        .sdram_ready(sdram_ready),

        .sdram_ren(sdram_ren_internal),
        .sdram_wen(sdram_wen_internal),
        .sdram_addr(sdram_addr),
        .sdram_data_out(sdram_interface_to_write),
        .sdram_byte_select_vector(sdram_byte_select_vector),

        .sdram_data_in(sdram_data_out[31:0]),
        .data_out(sdram_interface_data_out),
        .instr_out(sdram_instr),
        .ready(sdram_interface_ready)
    );


    ram_controller ram_controller_inst
    (
        .O_sdram_clk,
        .O_sdram_cke,
        .O_sdram_cs_n,
        .O_sdram_cas_n,
        .O_sdram_ras_n,
        .O_sdram_wen_n,
        .IO_sdram_dq,
        .O_sdram_addr,
        .O_sdram_ba,
        .O_sdram_dqm,

        .interface_ack(interface_ack),

        .icache_ren(icache_ren),
        .icache_addr(icache_addr),
        .icache_ack(icache_ack),

        .vga_ren(frame_ren),
        .vga_addr(vga_addr+frame_buffer_addr),
        .vga_ack(vga_ack),

        .cpu_clk(cpu_clk),
        .sdram_clk(sdram_clk),
        .reset_n(reset),
        .ren(sdram_ren_internal),
        .wen(sdram_wen_internal),
        .address(sdram_addr), // 31 bits address
        .data_in(sdram_interface_to_write),
        .mask(sdram_byte_select_vector),
        .len(0),
        // .len(sdram_len),
        .data_out(sdram_data_out),
        .ready(sdram_ready)
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

    // programMemory #(
    //     .NUM_BRAMS(2)
    // )RAM( 
    //     .clk(cpu_clk),
    //     .reset(reset),
    //     .PC(PC[30:2]),
    //     .address(data_addr[30:2]),
    //     .ren(program_mem_ren),
    //     .wen(program_mem_wen),
    //     .data_in(data_to_write),
    //     .byte_select_vector(byte_select),
    //     .instr(program_instr),
    //     .data_out(program_mem_out)
    // );
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
            .ready(memReady2)
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
            .ready(memReady2)
    );
    `endif
    //**********************************************************************************************//
    //                                         HDMI SCREEN                                           //
    //**********************************************************************************************//

    `ifndef TESTBENCH
    // tbh this should be a clock divider
    Gowin_rPLL_800vga slower_clock(
        .clkout(CLK_PIX), //13.5Mhz
        .clkin(clk)       //27Mhz
    );
    `else
    assign CLK_PIX = vga_clk; // 13.5 MHz
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
    wire [4:0]R_tmp = (screen_change)?R_tmp_FRAME:R_tmp_PPU;
    wire [5:0]G_tmp = (screen_change)?G_tmp_FRAME:G_tmp_PPU;
    wire [4:0]B_tmp = (screen_change)?B_tmp_FRAME:B_tmp_PPU;
    wire [4:0]R_tmp_FRAME;
    wire [5:0]G_tmp_FRAME;
    wire [4:0]B_tmp_FRAME;
    wire [4:0]R_tmp_PPU;
    wire [5:0]G_tmp_PPU;
    wire [4:0]B_tmp_PPU;

    wire [13:0] xcursor, ycursor;
    wire is_blank;

    wire screen_change;
    wire [22:0] frame_buffer_addr;

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
        .RGB_R(R_tmp_PPU),
        .RGB_G(G_tmp_PPU),
        .RGB_B(B_tmp_PPU),
        .screen_change(screen_change),
        .frame_buffer_addr(frame_buffer_addr)
    );

    wire frame_ren;
    wire vga_ack;
    wire [31:0] vga_addr;
    framebuffer fb_inst (
        .sdram_clk(sdram_clk), // 60 MHz
        .vga_clk(CLK_PIX), // 13.5 MHz
        .reset_n(reset),
        .xcursor(xcursor),
        .ycursor(ycursor),
        .vga_data_in(sdram_data_out),
        .ram_ack(vga_ack),
        .vga_ren(frame_ren),
        .vga_addr(vga_addr),
        .screen_change(screen_change),

        .R_tmp(R_tmp_FRAME),
        .G_tmp(G_tmp_FRAME),
        .B_tmp(B_tmp_FRAME)
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
    // `ifdef TESTBENCH

//    `endif
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