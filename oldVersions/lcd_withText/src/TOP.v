module TOP
(
    input clk,
	input			Reset_Button,
    input           User_Button,
    input           XTAL_IN,
	output			LCD_CLK,
	output			LCD_HYNC,
	output			LCD_SYNC,
	output			LCD_DEN,
	output	[4:0]	LCD_R,
	output	[5:0]	LCD_G,
	output	[4:0]	LCD_B,

    output  [5:0]   LED
);



	wire		CLK_SYS;
	wire		CLK_PIX;

    wire        oscout_o;



//    Use internal clock
//    Gowin_OSC chip_osc(
//        .oscout(oscout_o) //output oscout
//    );


/*
    This program uses external crystal oscillator and PLL to generate 33.33mhz clock to the screen
    If you use our 4.3-inch screen, you need to modify the PLL parameters (tools - > IP core generator) 
    to make CLK_ Pix is between 8-12mhz (according to the specification of the screen)
*/

    Gowin_rPLL chip_pll
    (
        .clkout(CLK_SYS), //output clkout      //200M
        .clkoutd(CLK_PIX), //output clkoutd   //33.33M
        .clkin(XTAL_IN) //input clkin
    );

    reg [15:0] waddr;
    reg [7:0] wdata;
    reg wen;

	VGAMod	D1
	(
		.CLK		(	CLK_SYS     ),
		.nRST		(	Reset_Button),
        .CLKFPGA    (   XTAL_IN     ),

		.PixelClk	(	CLK_PIX		),
		.LCD_DE		(	LCD_DEN	 	),
		.LCD_HSYNC	(	LCD_HYNC 	),
    	.LCD_VSYNC	(	LCD_SYNC 	),

		.LCD_B		(	LCD_B		),
		.LCD_G		(	LCD_G		),
		.LCD_R		(	LCD_R		),
        .wen        (   wen         ),
        .wdata      (   wdata       ),
        .waddr      (   waddr       )
	);

	assign		LCD_CLK		=	CLK_PIX;

    wire btn_debounced;

    btn_debouncer btn_debouncer_inst(
        .clk(XTAL_IN),
        .btn(User_Button),
        .btn_debounced(btn_debounced)
    );

//LED drive
    reg     [31:0]  counter;
    reg     [5:0]   LED;

    assign LED[0]= btn_debounced;

    always @(posedge XTAL_IN or negedge Reset_Button) begin
        if (!Reset_Button)
        begin
            wen     <= 1'b0;
            waddr   <= 16'd0;
            wdata   <= 8'd0;
        end
        else
        begin
            if(btn_debounced==0)
            begin
                wen     <= 1'b1;
                waddr   <= waddr + 1;
                wdata   <= wdata + 1;
            end
            else
            begin
                wen     <= 1'b0;
            end
        end
    end

    // always @(posedge XTAL_IN or negedge Reset_Button) begin
    // if (!Reset_Button)
    //     counter <= 24'd0;
    // else if (counter < 24'd400_0000)       // 0.5s delay
    //     counter <= counter + 1;
    // else
    //     counter <= 24'd0;
    // end

    // always @(posedge XTAL_IN or negedge Reset_Button) begin
    // if (!Reset_Button)
    //     LED <= 6'b111110;       
    // else if (counter == 24'd400_0000)       // 0.5s delay
    //     LED[5:0] <= {LED[4:0],LED[5]};        
    // else
    //     LED <= LED;
    // end

endmodule
