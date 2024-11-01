`include "config.vh"
`timescale 1ns/1ns
module top
(   
    input clk,
//    inout io_sda,
//    output io_scl,
    output       tmds_clk_n_1,
    output       tmds_clk_p_1,
    output [2:0] tmds_d_n_1,
    output [2:0] tmds_d_p_1,
    
    input flashMiso,
    output flashClk,
    output flashMosi,
    output flashCs,
    output flashWp,
    output flashHold,


    input uart_rx,
    output uart_tx,

    input resetn,
    input s2,
    input btnDownL,
    input btnUpL,
    input btnLeftL,
    input btnRightL

);
    //WP (write protection) is active low (_n), meaning that when it's driven low, it prevents writing; when high, it allows write operations.
    assign flashWp = 1'b1;
    //HOLD asserted (low), the device ignores the SPI clock, allowing communication to be paused without terminating the session.
    assign flashHold = 1'b1;


    reg cpuclk=1;
    wire clkout;

    wire		CLK_PIX;
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
            .program_instr(program_instr),
            
            .mem_ren(mem_ren),
            .mem_wen(mem_wen),
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
            .ready(memReady)
    );
    wire btn_ren;
    wire btn_out;
    buttonModule bm(
        .clk(cpu_clk),
        .btnDown(btnDownL),
        .btnUp(btnUpL),
        .btnLeft(btnLeftL),
        .btnRight(btnRightL),
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
    //                                         HDMI SCREEN                                           //
    //**********************************************************************************************//
    `ifndef TESTBENCH

    // for 640x480 you need ~127Mhz pll
    // for 1280x720 you need ~380Mhz pll
    // for 1920x1080 ~742Mhz but the closest with the 50mhz clock that is stable is 737.5Mhz
    Gowin_PLL_720p Gowin_PLL_inst(
        .lock(pll_lock), //output lock
        .clkout0(clk_p5), //output clkout0
        .clkin(clk) //input clkin
    );

    Gowin_CLKDIV Gowin_CLKDIV_inst(
        .clkout(clk_p), //output clkout
        .hclkin(clk_p5), //input hclkin
        .resetn(pll_lock) //input resetn
    );

    wire [15:0] data_selected;
    assign data_selected = (byte_select[1:0] == 2'b11) ? data_to_write[15:0] : data_to_write[31:16]; 


    Reset_Sync u_Reset_Sync (
    .resetn(sys_resetn),
    .ext_reset(~resetn & pll_lock),
    .clk(clk_p)
    );

    svo_hdmi svo_hdmi_inst_1 (
        .clk(clk_cpu),
        .resetn(sys_resetn),

        // video clocks
        .clk_pixel(clk_p),
        .clk_5x_pixel(clk_p5),
        .locked(pll_lock),

        // text mode signals 
        .clk_cpu(clk),
        .wen(screen_wen),
        .wdataText(data_selected[7:0]),
        .wdataAttr(data_selected[15:8]),
        .waddr(data_addr[11:1]),

        // output signals
        .tmds_clk_n(tmds_clk_n_1),
        .tmds_clk_p(tmds_clk_p_1),
        .tmds_d_n(tmds_d_n_1),
        .tmds_d_p(tmds_d_p_1)
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

    uartController uart_controller (
        .clk(cpu_clk),
        .reset(reset),
        .ren(uart_ren),
        .wen(1'b0),
        .uart_rx(uart_rx),
        .uart_tx(uart_tx),
        .address(data_addr[1:0]),
        .data_out(uart_data_out)
    );



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
    reg [2:0] state=0;
    localparam STATE_INIT = 0;
    localparam STATE_WAITING_BUTTON = 1;
    localparam STATE_DEBOUNCE = 2;
    localparam STATE_START=3;
    reg [22:0] txCounter = 0;
    reg [4:0]holdWEN=0;
    reg [23:0] counter=0;

    always@(posedge clkout) begin
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
                state <= STATE_INIT;
                // if (btn1 == 0) begin
                //     reset <= 1;
                //     state <= STATE_DEBOUNCE;
                //     txCounter <= 0;
                // end
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
                    state <= STATE_START;
                end else
                    state <= STATE_DEBOUNCE;
            end
            STATE_START: begin
                cpuclk<=1;
                // btn1reg<=1;
                // btn2reg<=1;
                reset <= 1;
                // if (btn1 == 0) begin
                //     // btn1reg<=0;
                //     state <= STATE_DEBOUNCE;
                //     txCounter <= 0;
                // end
                // if (btn2 == 0) begin
                //     // btn2reg<=0;
                //     state <= STATE_DEBOUNCE;
                //     txCounter <= 0;
//                end
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