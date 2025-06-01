module VGAMod(
    input                   rst,
    input                   clkFpga,  // the 27mhz clock
    input                   clkPixel, // the 13.5mhz clock


    output                  RGB_Activate, // VGA Enable Colors
    output                  H_Sync,       // VGA H SYNC
    output                  V_Sync,       // VGA V SYNC

    input           [4:0]  R_tmp,
    input           [5:0]  G_tmp,
    input           [4:0]  B_tmp,

    output      reg  [13:0]  PixelCtr,      // Total Horizontal Time = 1280 -> 11 bits
    output      reg  [13:0]  LineCtr,        // Total Vertical Time = 619 -> 10 bits
    output                  is_blank,       // VGA is blank
    input           [2:0]   debug_error,
	output          [4:0]   RGB_B,
	output          [5:0]   RGB_G,
	output          [4:0]   RGB_R
);
    
    //**************************** PARAMETERS ****************************//

    //Paremeters calculated for resolution 1024x600 18Hz 
    localparam      H_BackPorch  = 16'd96; 	//Horizontal offset
	localparam      H_Pulse 	 = 16'd72; 
	localparam      H_Display    = 16'd800; 
	localparam      H_FrontPorch = 16'd24;

	localparam      V_BackPorch  = 16'd6; //Vertical offset
	localparam      V_Pulse 	 = 16'd7; 
	localparam      V_Display    = 16'd480;
	localparam      V_FrontPorch = 16'd3; //62

    localparam horizontalTime = H_Pulse + H_BackPorch + H_Display + H_FrontPorch;
    localparam verticalTime = V_Pulse + V_BackPorch + V_Display + V_FrontPorch;
    
    //**************************** REGS & WIRES ****************************//
    // reg  [4:0] R_tmp;
    // reg  [5:0] G_tmp;
    // reg  [4:0] B_tmp;

    // reg  [10:0]  PixelCtr;      // Total Horizontal Time = 1280 -> 11 bits
    // reg  [9:0]  LineCtr;        // Total Vertical Time = 619 -> 10 bits

    wire H_activate, V_activate; // When RGB are activated horizontal and vertical

    wire [0:16*8-1] charMem;    // TextMode: 8x16 symbols
    wire [14:0] currentPixel;   // 
    
    wire [7:0] dataOutTxt;      // BRAM read text data
    wire [7:0] dataOutAttr;     // BRAM read attributes data
//    wire [10:0] currentPixel;   // 
    
    // FONTS -> How every 8x16 symbol is constructed 
    // reg     [0:256*128-1] fontMem=32768'h00000000000000000000000000000000_00007E81A58181BD9981817E00000000_00007EFFDBFFFFC3E7FFFF7E00000000_000000006CFEFEFEFE7C381000000000_0000000010387CFE7C38100000000000_000000183C3CE7E7E718183C00000000_000000183C7EFFFF7E18183C00000000_000000000000183C3C18000000000000_FFFFFFFFFFFFE7C3C3E7FFFFFFFFFFFF_0000000000003C664242663C00000000_FFFFFFFFFFC399BDBD99C3FFFFFFFFFF_00001E0E1A3278CCCCCCCC7800000000_00003C666666663C187E181800000000_00003F333F3030303070F0E000000000_00007F637F6363636367E7E6C0000000_0000001818DB3CE73CDB181800000000_0080C0E0F0F8FEF8F0E0C08000000000_0002060E1E3EFE3E1E0E060200000000_0000183C7E1818187E3C180000000000_00006666666666666600666600000000_00007FDBDBDB7B1B1B1B1B1B00000000_007CC660386CC6C66C380CC67C000000_0000000000000000FEFEFEFE00000000_0000183C7E1818187E3C187E30000000_0000183C7E1818181818181800000000_0000181818181818187E3C1800000000_0000000000180CFE0C18000000000000_00000000003060FE6030000000000000_000000000000C0C0C0FE000000000000_00000000002466FF6624000000000000_000000001038387C7CFEFE0000000000_00000000FEFE7C7C3838100000000000_00000000000000000000000000000000_0000183C3C3C18181800181800000000_00666666240000000000000000000000_0000006C6CFE6C6C6CFE6C6C00000000_18187CC6C2C07C060686C67C18180000_00000000C2C60C183060C68600000000_0000386C6C3876DCCCCCCC7600000000_00303030600000000000000000000000_00000C18303030303030180C00000000_000030180C0C0C0C0C0C183000000000_0000000000663CFF3C66000000000000_000000000018187E1818000000000000_00000000000000000018181830000000_000000000000007E0000000000000000_00000000000000000000181800000000_0000000002060C183060C08000000000_00007CC6C6CEDEF6E6C6C67C00000000_00001838781818181818187E00000000_00007CC6060C183060C0C6FE00000000_00007CC606063C060606C67C00000000_00000C1C3C6CCCFE0C0C0C1E00000000_0000FEC0C0C0FC060606C67C00000000_00003860C0C0FCC6C6C6C67C00000000_0000FEC606060C183030303000000000_00007CC6C6C67CC6C6C6C67C00000000_00007CC6C6C67E0606060C7800000000_00000000181800000018180000000000_00000000181800000018183000000000_000000060C18306030180C0600000000_00000000007E00007E00000000000000_0000006030180C060C18306000000000_00007CC6C60C18181800181800000000_00007CC6C6C6DEDEDEDCC07C00000000_000010386CC6C6FEC6C6C6C600000000_0000FC6666667C66666666FC00000000_00003C66C2C0C0C0C0C2663C00000000_0000F86C6666666666666CF800000000_0000FE6662687868606266FE00000000_0000FE6662687868606060F000000000_00003C66C2C0C0DEC6C6663A00000000_0000C6C6C6C6FEC6C6C6C6C600000000_00003C18181818181818183C00000000_00001E0C0C0C0C0CCCCCCC7800000000_0000E666666C78786C6666E600000000_0000F06060606060606266FE00000000_0000C3E7FFFFDBC3C3C3C3C300000000_0000C6E6F6FEDECEC6C6C6C600000000_00007CC6C6C6C6C6C6C6C67C00000000_0000FC6666667C60606060F000000000_00007CC6C6C6C6C6C6D6DE7C0C0E0000_0000FC6666667C6C666666E600000000_00007CC6C660380C06C6C67C00000000_0000FFDB991818181818183C00000000_0000C6C6C6C6C6C6C6C6C67C00000000_0000C3C3C3C3C3C3C3663C1800000000_0000C3C3C3C3C3DBDBFF666600000000_0000C3C3663C18183C66C3C300000000_0000C3C3C3663C181818183C00000000_0000FFC3860C183060C1C3FF00000000_00003C30303030303030303C00000000_00000080C0E070381C0E060200000000_00003C0C0C0C0C0C0C0C0C3C00000000_10386CC6000000000000000000000000_00000000000000000000000000FF0000_30301800000000000000000000000000_0000000000780C7CCCCCCC7600000000_0000E06060786C666666667C00000000_00000000007CC6C0C0C0C67C00000000_00001C0C0C3C6CCCCCCCCC7600000000_00000000007CC6FEC0C0C67C00000000_0000386C6460F060606060F000000000_000000000076CCCCCCCCCC7C0CCC7800_0000E060606C7666666666E600000000_00001818003818181818183C00000000_00000606000E06060606060666663C00_0000E06060666C78786C66E600000000_00003818181818181818183C00000000_0000000000E6FFDBDBDBDBDB00000000_0000000000DC66666666666600000000_00000000007CC6C6C6C6C67C00000000_0000000000DC66666666667C6060F000_000000000076CCCCCCCCCC7C0C0C1E00_0000000000DC7666606060F000000000_00000000007CC660380CC67C00000000_0000103030FC30303030361C00000000_0000000000CCCCCCCCCCCC7600000000_0000000000C3C3C3C3663C1800000000_0000000000C3C3C3DBDBFF6600000000_0000000000C3663C183C66C300000000_0000000000C6C6C6C6C6C67E060CF800_0000000000FECC183060C6FE00000000_00000E18181870181818180E00000000_00001818181800181818181800000000_0000701818180E181818187000000000_000076DC000000000000000000000000_0000000010386CC6C6C6FE0000000000_FF81818181818181818181818181FF00_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000__00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000_00000000000000000000000000000000;
    
    //**************************** HORIZONTAL AND VERTICAL COUNTERS ****************************//
    always @( posedge clkPixel or negedge rst )begin
        if(!rst)begin
            PixelCtr <= 0;
            LineCtr <= 0;
        end
        else begin
            if(PixelCtr == horizontalTime)begin
                PixelCtr <= 0;
                LineCtr <= LineCtr + 1;
            end
            else if(LineCtr == verticalTime)begin
                PixelCtr <= 0;
                LineCtr <= 0;
            end
            else begin
                PixelCtr <= PixelCtr + 1;
            end
        end
    end
    
    //************************************ FIND CURRENT PIXEL *************************************//
    
    // PixelCtr -> 8 bits and 128 elements each row    -> 7 bits -> if resolution half 6 bits
    // LineCtr  -> 16 bits and 38 elements each column -> 6 bits -> if resolution half 5 bits

    // assign currentPixel = (RGB_Activate) ? {LineCtr[9:5],PixelCtr[9:4]} : 12'b0;
    
    // //**************************** TEXT AND ATTRIBUTES DUAL PORT BRAMS ****************************//
    // Gowin_DPB text_Buffer(
    //     //port A -> write port
    //     .douta(douta), 
    //     .clka(clkFpga),     
    //     .ocea(1'b1), 
    //     .cea(1'b1), 
    //     .reseta(!rst),     
    //     .wrea(wen),         
    //     .ada(waddr),        
    //     .dina(wdataText),   
        
    //     //port B -> read port
    //     .doutb(dataOutTxt), 
    //     .clkb(clkFpga),     
    //     .oceb(1'b1),       
    //     .ceb(1'b1), 
    //     .resetb(!rst),      
    //     .wreb(1'b0),        
    //     .adb(currentPixel), 
    //     .dinb(dinb)         
    // );

    // Gowin_DPB attributes_Buffer(
    //     //port A -> write port
    //     .douta(douta), 
    //     .clka(clkFpga), 
    //     .ocea(1'b1), 
    //     .cea(1'b1), 
    //     .reseta(!rst), 
    //     .wrea(wen), 
    //     .ada(waddr), 
    //     .dina(wdataAttr), 
        
    //     //port B -> read port
    //     .doutb(dataOutAttr),
    //     .clkb(clkFpga), 
    //     .oceb(1'b1), 
    //     .ceb(1'b1), 
    //     .resetb(!rst), 
    //     .wreb(1'b0), 
    //     .adb(currentPixel), 
    //     .dinb(dinb) 
    // );
    
    // //*************************** EXTRACT THE RGB BASED ON THE FONT OF THE CURRENT PIXEL *******************************//

    // assign charMem = fontMem[dataOutTxt*128+:128]; // read symbol from BRAM 

    // always @(posedge clkFpga or negedge rst)begin
    //     if(!rst)begin
    //         R_tmp <= 5'd0;
    //         G_tmp <= 6'd0;
    //         B_tmp <= 5'd0;
    //     end
    //     else begin
    //         //FOREGROUND COLOR
    //         if (charMem[{LineCtr[4:1],PixelCtr[3:1]}] == 1'b1) begin
    //             if (dataOutAttr[3:0] == 4'b0000) begin
    //                 R_tmp <= 5'b00000;   // Black
    //                 G_tmp <= 6'b000000;  // Black
    //                 B_tmp <= 5'b00000;   // Black
    //             end
    //             else if (dataOutAttr[3:0] == 4'b0001) begin
    //                 R_tmp <= 5'b11000;   // Red
    //                 G_tmp <= 6'b000000;  // Red
    //                 B_tmp <= 5'b00000;   // Red
    //             end
    //             else if (dataOutAttr[3:0] == 4'b0010) begin
    //                 R_tmp <= 5'b00000;   // Green
    //                 G_tmp <= 6'b110000;  // Green
    //                 B_tmp <= 5'b00000;   // Green
    //             end
    //             else if (dataOutAttr[3:0] == 4'b0011) begin
    //                 R_tmp <= 5'b11000;   // Mustard
    //                 G_tmp <= 6'b110000;  // Mustard
    //                 B_tmp <= 5'b00000;   // Mustard
    //             end
    //             else if (dataOutAttr[3:0] == 4'b0100) begin
    //                 R_tmp <= 5'b00000;   // Blue
    //                 G_tmp <= 6'b000000;  // Blue
    //                 B_tmp <= 5'b11000;   // Blue
    //             end
    //             else if (dataOutAttr[3:0] == 4'b0101) begin
    //                 R_tmp <= 5'b11000;   // Violet
    //                 G_tmp <= 6'b000000;  // Violet
    //                 B_tmp <= 5'b11000;   // Violet
    //             end
    //             else if (dataOutAttr[3:0] == 4'b0110) begin
    //                 R_tmp <= 5'b00000;   // Cyan
    //                 G_tmp <= 6'b110000;  // Cyan
    //                 B_tmp <= 5'b11000;   // Cyan
    //             end
    //             else if (dataOutAttr[3:0] == 4'b0111) begin
    //                 R_tmp <= 5'b10000;   // Dark Gray
    //                 G_tmp <= 6'b100000;  // Dark Gray
    //                 B_tmp <= 5'b10000;   // Dark Gray
    //             end
    //             else if (dataOutAttr[3:0] == 4'b1000) begin
    //                 R_tmp <= 5'b11000;   // Light Gray
    //                 G_tmp <= 6'b110000;  // Light Gray
    //                 B_tmp <= 5'b11000;   // Light Gray
    //             end
    //             else if (dataOutAttr[3:0] == 4'b1001) begin
    //                 R_tmp <= 5'b11111;   // Intense Red
    //                 G_tmp <= 6'b000000;  // Intense Red
    //                 B_tmp <= 5'b00000;   // Intense Red
    //             end
    //             else if (dataOutAttr[3:0] == 4'b1010) begin
    //                 R_tmp <= 5'b00000;   // Intense Green
    //                 G_tmp <= 6'b111111;  // Intense Green
    //                 B_tmp <= 5'b00000;   // Intense Green
    //             end
    //             else if (dataOutAttr[3:0] == 4'b1011) begin
    //                 R_tmp <= 5'b11111;   // Intense Yellow
    //                 G_tmp <= 6'b111111;  // Intense Yellow
    //                 B_tmp <= 5'b00000;   // Intense Yellow
    //             end
    //             else if (dataOutAttr[3:0] == 4'b1100) begin
    //                 R_tmp <= 5'b00000;   // Intense Blue
    //                 G_tmp <= 6'b000000;  // Intense Blue
    //                 B_tmp <= 5'b11111;   // Intense Blue
    //             end
    //             else if (dataOutAttr[3:0] == 4'b1101) begin
    //                 R_tmp <= 5'b11111;   // Intense Magenta
    //                 G_tmp <= 6'b000000;  // Intense Magenta
    //                 B_tmp <= 5'b11111;   // Intense Magenta
    //             end
    //             else if (dataOutAttr[3:0] == 4'b1110) begin
    //                 R_tmp <= 5'b00000;   // Intense Cyan
    //                 G_tmp <= 6'b111111;  // Intense Cyan
    //                 B_tmp <= 5'b11111;   // Intense Cyan
    //             end
    //             else if (dataOutAttr[3:0] == 4'b1111) begin
    //                 R_tmp <= 5'b11111;   // White
    //                 G_tmp <= 6'b111111;  // White
    //                 B_tmp <= 5'b11111;   // White
    //             end
    //         end
    //         //BACKROUND COLOR
    //         else begin
    //             if (dataOutAttr[6:4] == 3'b000) begin
    //                 R_tmp <= 5'b00000;   // Black
    //                 G_tmp <= 6'b000000;  // Black
    //                 B_tmp <= 5'b00000;   // Black
    //             end
    //             else if (dataOutAttr[6:4] == 3'b001) begin
    //                 B_tmp <= 5'b00000;   // Red
    //                 G_tmp <= 6'b000000;  // Red
    //                 R_tmp <= 5'b11111;   // Red
    //             end
    //             else if (dataOutAttr[6:4] == 3'b010) begin
    //                 B_tmp <= 5'b00000;   // Green
    //                 G_tmp <= 6'b111111;  // Green
    //                 R_tmp <= 5'b00000;   // Green
    //             end
    //             else if (dataOutAttr[6:4] == 3'b011) begin
    //                 B_tmp <= 5'b00000;    // Yellow
    //                 G_tmp <= 6'b111111;   // Yellow
    //                 R_tmp <= 5'b111111;   // Yellow
    //             end
    //             else if (dataOutAttr[6:4] == 3'b100) begin
    //                 B_tmp <= 5'b11111;   // Blue
    //                 G_tmp <= 6'b000000;  // Blue
    //                 R_tmp <= 5'b00000;   // Blue
    //             end
    //             else if (dataOutAttr[6:4] == 3'b101) begin
    //                 B_tmp <= 5'b11111;   // Magenta
    //                 G_tmp <= 6'b000000;  // Magenta
    //                 R_tmp <= 5'b11111;   // Magenta
    //             end
    //             else if (dataOutAttr[6:4] == 3'b110) begin
    //                 B_tmp <= 5'b11111;   // Cyan
    //                 G_tmp <= 6'b111111;  // Cyan
    //                 R_tmp <= 5'b00000;   // Cyan
    //             end
    //             else if (dataOutAttr[6:4] == 3'b111) begin
    //                 B_tmp <= 5'b11111;   // White
    //                 G_tmp <= 6'b111111;  // White
    //                 R_tmp <= 5'b11111;   // White
    //             end
    //         end
    //     end
    // end

    //**************************** VGA OUTPUTS TO CONTROL THE SCREEN ****************************//
    assign is_blank = (PixelCtr >= H_Display) ? 1'b1 : 1'b0;
    assign  H_Sync = ( PixelCtr >= horizontalTime - H_Pulse) ? 1'b1 : 1'b0;
	assign  V_Sync = ( LineCtr >= verticalTime - V_Pulse) ? 1'b1 : 1'b0;

    assign H_activate = ( PixelCtr <= H_Display) ? 1'b1: 1'b0;
    assign V_activate = ( LineCtr <= V_Display) ? 1'b1: 1'b0;
    assign  RGB_Activate = (H_activate && V_activate);


    assign RGB_R = (debug_error==1)?5'b11111:((RGB_Activate) ? R_tmp : 5'b00000); 
    assign RGB_G = (debug_error==2)?6'b111111:((RGB_Activate) ? G_tmp : 6'b000000); 
    assign RGB_B = (debug_error==3)?5'b11111:((RGB_Activate) ? B_tmp : 5'b00000);

endmodule
