module VGAMod
(
    input                   CLK,    // the 200mhz clock
    input                   nRST,
    input                   CLKFPGA, // the 27mhz clock

    input                   PixelClk, //the 33.3mhz clock

    output                  LCD_DE,
    output                  LCD_HSYNC,
    output                  LCD_VSYNC,

	output          [4:0]   LCD_B,
	output          [5:0]   LCD_G,
	output          [4:0]   LCD_R,
    input                   wen,
    input           [7:0]   wdata,
    input           [15:0]  waddr
);

// parameter H_ACTIVE = 16'd1024; 
// parameter H_FP = 16'd160;      
// parameter H_SYNC = 16'd20;   
// parameter H_BP = 16'd140;      
// parameter V_ACTIVE = 16'd600; 
// parameter V_FP  = 16'd12;     
// parameter V_SYNC  = 16'd3;    
// parameter V_BP  = 16'd20;    
// parameter HS_POL = 1'b0;
// parameter VS_POL = 1'b0;
    reg         [15:0]  PixelCount;
    reg         [15:0]  LineCount;

	localparam      V_BackPorch = 16'd0; //Vertical offset
	localparam      V_Pluse 	= 16'd3; 
	localparam      HeightPixel  = 16'd600;
	localparam      V_FrontPorch= 16'd12; //62

	localparam      H_BackPorch = 16'd1; 	//Horizontal offset
	localparam      H_Pluse 	= 16'd20; 
	localparam      WidthPixel  = 16'd1024; 
	localparam      H_FrontPorch= 16'd160;

    parameter       BarCount    = 16; // RGB565
    localparam      Width_bar   = WidthPixel / 16;
     
    localparam      PixelForHS  =   WidthPixel + H_BackPorch + H_FrontPorch;  	
    localparam      LineForVS   =   HeightPixel + V_BackPorch + V_FrontPorch;

    always @(  posedge PixelClk or negedge nRST  )begin
        if( !nRST ) begin
            LineCount       <=  16'b0;    
            PixelCount      <=  16'b0;
            end
        else if(  PixelCount  ==  PixelForHS ) begin
            PixelCount      <=  16'b0;
            LineCount       <=  LineCount + 1'b1;
            end
        else if(  LineCount  == LineForVS  ) begin
            LineCount       <=  16'b0;
            PixelCount      <=  16'b0;
            end
        else
            PixelCount      <=  PixelCount + 1'b1;
    end

	reg			[9:0]  Data_R;
	reg			[9:0]  Data_G;
	reg			[9:0]  Data_B;
    (* ram_style = "block" *)
    reg         [7:0] string1 [0:128*4-1];
    reg     [0:128*128-1] fontMem=16384'h00000000000000000000000000000000_00007E81A58181BD9981817E00000000_00007EFFDBFFFFC3E7FFFF7E00000000_000000006CFEFEFEFE7C381000000000_0000000010387CFE7C38100000000000_000000183C3CE7E7E718183C00000000_000000183C7EFFFF7E18183C00000000_000000000000183C3C18000000000000_FFFFFFFFFFFFE7C3C3E7FFFFFFFFFFFF_00000000003C664242663C0000000000_FFFFFFFFFFC399BDBD99C3FFFFFFFFFF_00001E0E1A3278CCCCCCCC7800000000_00003C666666663C187E181800000000_00003F333F3030303070F0E000000000_00007F637F6363636367E7E6C0000000_0000001818DB3CE73CDB181800000000_0080C0E0F0F8FEF8F0E0C08000000000_0002060E1E3EFE3E1E0E060200000000_0000183C7E1818187E3C180000000000_00006666666666666600666600000000_00007FDBDBDB7B1B1B1B1B1B00000000_007CC660386CC6C66C380CC67C000000_0000000000000000FEFEFEFE00000000_0000183C7E1818187E3C187E30000000_0000183C7E1818181818181800000000_0000181818181818187E3C1800000000_0000000000180CFE0C18000000000000_00000000003060FE6030000000000000_000000000000C0C0C0FE000000000000_00000000002466FF6624000000000000_000000001038387C7CFEFE0000000000_00000000FEFE7C7C3838100000000000_00000000000000000000000000000000_0000183C3C3C18181800181800000000_00666666240000000000000000000000_0000006C6CFE6C6C6CFE6C6C00000000_18187CC6C2C07C060686C67C18180000_00000000C2C60C183060C68600000000_0000386C6C3876DCCCCCCC7600000000_00303030600000000000000000000000_00000C18303030303030180C00000000_000030180C0C0C0C0C0C183000000000_0000000000663CFF3C66000000000000_000000000018187E1818000000000000_00000000000000000018181830000000_000000000000007E0000000000000000_00000000000000000000181800000000_0000000002060C183060C08000000000_00007CC6C6CEDEF6E6C6C67C00000000_00001838781818181818187E00000000_00007CC6060C183060C0C6FE00000000_00007CC606063C060606C67C00000000_00000C1C3C6CCCFE0C0C0C1E00000000_0000FEC0C0C0FC060606C67C00000000_00003860C0C0FCC6C6C6C67C00000000_0000FEC606060C183030303000000000_00007CC6C6C67CC6C6C6C67C00000000_00007CC6C6C67E0606060C7800000000_00000000181800000018180000000000_00000000181800000018183000000000_000000060C18306030180C0600000000_00000000007E00007E00000000000000_0000006030180C060C18306000000000_00007CC6C60C18181800181800000000_00007CC6C6C6DEDEDEDCC07C00000000_000010386CC6C6FEC6C6C6C600000000_0000FC6666667C66666666FC00000000_00003C66C2C0C0C0C0C2663C00000000_0000F86C6666666666666CF800000000_0000FE6662687868606266FE00000000_0000FE6662687868606060F000000000_00003C66C2C0C0DEC6C6663A00000000_0000C6C6C6C6FEC6C6C6C6C600000000_00003C18181818181818183C00000000_00001E0C0C0C0C0CCCCCCC7800000000_0000E666666C78786C6666E600000000_0000F06060606060606266FE00000000_0000C3E7FFFFDBC3C3C3C3C300000000_0000C6E6F6FEDECEC6C6C6C600000000_00007CC6C6C6C6C6C6C6C67C00000000_0000FC6666667C60606060F000000000_00007CC6C6C6C6C6C6D6DE7C0C0E0000_0000FC6666667C6C666666E600000000_00007CC6C660380C06C6C67C00000000_0000FFDB991818181818183C00000000_0000C6C6C6C6C6C6C6C6C67C00000000_0000C3C3C3C3C3C3C3663C1800000000_0000C3C3C3C3C3DBDBFF666600000000_0000C3C3663C18183C66C3C300000000_0000C3C3C3663C181818183C00000000_0000FFC3860C183060C1C3FF00000000_00003C30303030303030303C00000000_00000080C0E070381C0E060200000000_00003C0C0C0C0C0C0C0C0C3C00000000_10386CC6000000000000000000000000_00000000000000000000000000FF0000_30301800000000000000000000000000_0000000000780C7CCCCCCC7600000000_0000E06060786C666666667C00000000_00000000007CC6C0C0C0C67C00000000_00001C0C0C3C6CCCCCCCCC7600000000_00000000007CC6FEC0C0C67C00000000_0000386C6460F060606060F000000000_000000000076CCCCCCCCCC7C0CCC7800_0000E060606C7666666666E600000000_00001818003818181818183C00000000_00000606000E06060606060666663C00_0000E06060666C78786C66E600000000_00003818181818181818183C00000000_0000000000E6FFDBDBDBDBDB00000000_0000000000DC66666666666600000000_00000000007CC6C6C6C6C67C00000000_0000000000DC66666666667C6060F000_000000000076CCCCCCCCCC7C0C0C1E00_0000000000DC7666606060F000000000_00000000007CC660380CC67C00000000_0000103030FC30303030361C00000000_0000000000CCCCCCCCCCCC7600000000_0000000000C3C3C3C3663C1800000000_0000000000C3C3C3DBDBFF6600000000_0000000000C3663C183C66C300000000_0000000000C6C6C6C6C6C67E060CF800_0000000000FECC183060C6FE00000000_00000E18181870181818180E00000000_00001818181800181818181800000000_0000701818180E181818187000000000_000076DC000000000000000000000000_0000000010386CC6C6C6FE0000000000;
    wire [7:0] lineID;
    wire [7:0] columnID;
    assign lineID = currentY[9:4];
    assign columnID = currentX[10:3];

    //halves the resolution from 1024x600 to 512x300
    wire [14:0] currentX;
    wire [14:0] currentY;
    assign currentX = PixelCount[15:1];
    assign currentY = LineCount[15:1];

    wire [11:0] currentChar;
    assign currentChar = columnID+lineID*(WidthPixel/16);
    integer i; 
    always@(posedge CLKFPGA or negedge nRST)begin
        if( !nRST ) begin
            for (i = 0;i<512 ;i=i+1 ) begin
                string1[i] = 0;
            end
            string1[0:11]   = "Hello World";
            string1 [500:511]= "The end str";
        end
        else
        begin
            if(wen==1'b1)
            begin
                string1[waddr]=wdata;
            end
        end
    end
    wire    [0:16*8-1] charMem;
    assign  charMem = fontMem[string1[currentChar]*128+:128];  
    reg [2:0]currentColor=3'b111;
    always @(  posedge PixelClk or negedge nRST  )begin
        if( !nRST ) begin
			Data_R <= 9'b0;
			Data_G <= 9'b0;
			Data_B <= 9'b0;
        end
        else
        begin
            // if(PixelCount>=WidthPixel-10)
            // begin
            //     Data_R = 5'b11111;
            //     Data_G = 6'b000000;
            //     Data_B = 5'b000000;
            // end
            // else if(LineCount>=HeightPixel-10)
            // begin
            //     Data_R = 5'b11111;
            //     Data_G = 6'b00000;
            //     Data_B = 5'b11111;
            // end
            // // else
            begin
                if(currentColor[2]==1)
                Data_R   =   (charMem[currentX[2:0]+(currentY[3:0]*8)]==1'b1)? 5'b11111 : 5'b00000;
                else
                Data_R   =   5'b00000;
                if(currentColor[1]==1)
                Data_G   =      (charMem[currentX[2:0]+(currentY[3:0]*8)]==1'b1)?6'b111111 : 6'b000000;
                else
                Data_G   =   6'b000000;
                if(currentColor[0]==1)
                Data_B   =      (charMem[currentX[2:0]+(currentY[3:0]*8)]==1'b1)?5'b11111 : 5'b00000;
                else
                Data_B   =   5'b00000;
            end
        end
	end
    // reg selected_char [(16*32)-1:0];
    // initial $readmemb("font.hex", selected_char);
    
    

	//注意这里HSYNC和VSYNC负极性
    assign  LCD_HSYNC = (( PixelCount >= H_Pluse)&&( PixelCount <= (PixelForHS-H_FrontPorch))) ? 1'b0 : 1'b1;
    //assign  LCD_VSYNC = ((( LineCount  >= 0 )&&( LineCount  <= (V_Pluse-1) )) ) ? 1'b1 : 1'b0;		//这里不减一的话，图片底部会往下拖尾？
	assign  LCD_VSYNC = ((( LineCount  >= V_Pluse )&&( LineCount  <= (LineForVS-0) )) ) ? 1'b0 : 1'b1;
    //assign  FIFO_RST  = (( PixelCount ==0)) ? 1'b1 : 1'b0;  //留给主机H_BackPorch的时间进入中断，发送数据

    assign  LCD_DE = (  ( PixelCount >= H_BackPorch)&&
                        ( PixelCount <= PixelForHS-H_FrontPorch ) &&
                        ( LineCount >= V_BackPorch ) &&
                        ( LineCount <= LineForVS-V_FrontPorch-1 ))  ? 1'b1 : 1'b0;
						//这里不减一，会抖动

    assign LCD_R = Data_R;
    assign LCD_G = Data_G;
    assign LCD_B = Data_B;


//    assign  LCD_R   =   PixelCount < H_BackPorch + Width_bar *  0    ? 5'b00000 :  
//                        PixelCount < H_BackPorch + Width_bar *  1    ? 5'b00001 :    
//                        PixelCount < H_BackPorch + Width_bar *  2    ? 5'b00010 :    
//                        PixelCount < H_BackPorch + Width_bar *  3    ? 5'b00100 :    
//                        PixelCount < H_BackPorch + Width_bar *  4    ? 5'b01000 :    
//                        PixelCount < H_BackPorch + Width_bar *  5    ? 5'b11111 :  5'b00000 ;   

//    assign  LCD_G   =   PixelCount < H_BackPorch + Width_bar *  6    ? 6'b000001 :    
//                        PixelCount < H_BackPorch + Width_bar *  7    ? 6'b000010 :    
//                        PixelCount < H_BackPorch + Width_bar *  8    ? 6'b000100 :    
//                        PixelCount < H_BackPorch + Width_bar *  9    ? 6'b001000 :    
//                        PixelCount < H_BackPorch + Width_bar *  10   ? 6'b010000 :  
//                        PixelCount < H_BackPorch + Width_bar *  11   ? 6'b111111 : 6'b000000 ;

//    assign  LCD_B   =   PixelCount < H_BackPorch + Width_bar *  12   ? 5'b00001 :    
//                        PixelCount < H_BackPorch + Width_bar *  13   ? 5'b00010 :    
//                        PixelCount < H_BackPorch + Width_bar *  14   ? 5'b00100 :    
//                        PixelCount < H_BackPorch + Width_bar *  15   ? 5'b01000 :    
//                        PixelCount < H_BackPorch + Width_bar *  16   ? 5'b11111 :  5'b00000 ;

endmodule
module BlockRAM(
    input wire clk,
    input wire wen, // Write enable
    input wire [7:0] wdata, // Data to write
    input wire [15:0] waddr, // Write address
    input wire [15:0] raddr, // Read address
    output reg [7:0] rdata // Data to read
);

    // Declare the Block RAM
    (* ram_style = "block" *) reg [7:0] memory_array [0:2047]; // Adjust size as needed

    always @(posedge clk) begin
        if (wen) begin
            // Write operation
            memory_array[waddr] <= wdata;
        end
        // Read operation
        rdata <= memory_array[raddr];
    end

endmodule