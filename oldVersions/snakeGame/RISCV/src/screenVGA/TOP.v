module vgaTOP
(
    input clk,
	input			Reset_Button,
    input           User_Button,
    input           XTAL_IN,
    input           wen,
    input   [15:0]  dataIn,
           
	output			LCD_CLK,
	output			LCD_HYNC,
	output			LCD_SYNC,
	output			LCD_DEN,
	output	[4:0]	LCD_R,
	output	[5:0]	LCD_G,
	output	[4:0]	LCD_B
);

	wire		CLK_PIX;

    Gowin_rPLL slower_clock(
        .clkout(CLK_PIX), //output clkout
        .clkin(XTAL_IN) //input clkin
    );

    reg [15:0] waddr;
    wire [7:0] wdataText;
    wire [7:0] wdataAttr;

    assign wdataText = dataIn[7:0];
    assign wdataAttr = dataIn[15:8];

	VGAMod	D1
	(
		.clk		(	XTAL_IN     ),
		.rst		(	Reset_Button),
        .clkFpga    (   XTAL_IN     ),

		.clkPixel	(	CLK_PIX		),
		.RGB_Activate		(	LCD_DEN	 	),
		.H_Sync	(	LCD_HYNC 	),
    	.V_Sync	(	LCD_SYNC 	),

		.RGB_B		(	LCD_B		),
		.RGB_G		(	LCD_G		),
		.RGB_R		(	LCD_R		),
        .wen        (   wen         ),
        .wdataText  (   wdataText      ),
        .wdataAttr  (   wdataAttr      ),
        .waddr      (   waddr       )
	);

	assign		LCD_CLK		=	CLK_PIX;

    wire btn_debounced;

    btn_debouncer btn_debouncer_inst(
        .clk(XTAL_IN),
        .btn(User_Button),
        .btn_debounced(btn_debounced)
    );

    
    reg flag;
    always @(posedge XTAL_IN or negedge Reset_Button) begin
        if (!Reset_Button)
        begin
            wdataText   <= 8'd0;
            wdataAttr   <= 8'd0;
            flag <= 1'b1;
        end
        else
        begin
            
            if(flag == 1)begin
                wdataText <= 0;
                wen <= 1'b1;
                
                if(waddr == 1216)begin
                   waddr = 0;
                   flag = 0;
                end
                else
                    waddr <= waddr+1;        
            end
            else begin
                if(btn_debounced==0) begin
                    wen     <= 1'b1;
                    
                    if(waddr == 1216)begin
                        waddr = 0;
                        flag = 1;
                    end
                    else begin
                        waddr   <= waddr + 1;
                        wdataText   <= wdataText + 1;
                        wdataAttr[3:0] <= wdataAttr[3:0] + 1;
                        wdataAttr[6:4] <= 3'b000; 
                    end
                end
                else
                    wen     <= 1'b0;
            end
        end
    end

endmodule
