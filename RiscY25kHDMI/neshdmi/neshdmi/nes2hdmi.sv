// NES video and sound to HDMI converter
// nand2mario, 2022.9

`timescale 1ns / 1ps

import configPackage::*;

module nes2hdmi (
	input clk,      // nes clock
	input resetn,

    // nes video signals
    input [5:0] color,
    input [8:0] cycle,
    input [8:0] scanline,
    input [15:0] sample,
    input aspect_8x7,       // 1: 8x7 pixel aspect ratio mode

	// video clocks
	input clk_pixel,
	input clk_5x_pixel,
	input locked,

    // output [7:0] led,

	// output signals
	output       tmds_clk_n,
	output       tmds_clk_p,
	output [2:0] tmds_d_n,
	output [2:0] tmds_d_p
);
    // flags
    // logic asp8x7_on = 1'b1;
    
    // video stuff
    wire [9:0] cy, frameHeight;
    wire [10:0] cx, frameWidth;
    // logic [7:0] ONE_THIRD[0:768];     // lookup table for divide-by-3

    // logic active;
    // logic r_active;
    // logic [7:0] x;                    // NES pixel position
    // wire [7:0] y;

    //
    // BRAM frame buffer
    //
    // localparam MEM_DEPTH=256*240;
    // localparam MEM_ABITS=16;

    // logic [5:0] mem [0:256*240-1];
    // logic [15:0] mem_portA_addr;
    // logic [5:0] mem_portA_wdata;
    // logic mem_portA_we;

    // wire [15:0] mem_portB_addr;
    // logic [5:0] mem_portB_rdata;

    logic initializing = 1;
    logic [7:0] init_y = 0;
    logic [7:0] init_x = 0; 

    // // BRAM port A read/write
	// always_ff @(posedge clk) begin
	// 	if (mem_portA_we) begin
	// 		mem[mem_portA_addr] <= mem_portA_wdata;
	// 	end
	// end

    // // BRAM port B read
    // always_ff @(posedge clk_pixel) begin
    //     mem_portB_rdata <= mem[mem_portB_addr];
    // end

    // initial begin
    //     $readmemb("background.txt", mem);
    // end

    // localparam [0:65] LOGO [0:12] = '{
    //     'b11110000110011111111001111001111111110000000000000000000000000000,
    //     'b11110000110011111111011111101111111110000000000000000000000000000,
    //     'b11111000110011100000011100100001110000000000000000000000000000000,
    //     'b11111000110011100000011100000001110000011111000111111100001111110,
    //     'b11011100110011111110001110000001110000110011100111001110011100111,
    //     'b11001110110011111110000111000001110000000011100110001110011000111,
    //     'b11001111110011000000000011100001110000111111100110001110111000111,
    //     'b11000111110011000000110011100001110001111111100110001110111000111,
    //     'b11000011110011111110111111100001100001110011100110001110011001111,
    //     'b11000011110011111110011111000001100000111111100110001110001111111,
    //     'b00000000000000000000000000000000000000000000000000000000000000111,
    //     'b00000000000000000000000000000000000000000000000000000000011001110,
    //     'b00000000000000000000000000000000000000000000000000000000011111100
    // };

    // 
    // // Data input and initial background loading
    // //
    // logic [8:0] r_scanline;
    // logic [8:0] r_cycle;
    // always @(posedge clk) begin
    //     if (~resetn) begin
    //         initializing <= 1;
    //         init_y <= 0;
    //         init_x <= 0;
    //         mem_portA_we <= 0;
    //     end else if (initializing) begin    // setup background at initialization
    //         init_x <= init_x + 1;
    //         init_y <= init_x == 255 ? init_y + 1 : init_y;
    //         if (init_y == 240)
    //             initializing <= 0;
    //         mem_portA_we <= 1;
    //         mem_portA_addr <= {init_y, init_x};
    //         if (init_x >= 96 && init_x <= 160 && init_y >= 212 && init_y <= 224 && LOGO[init_y - 212][init_x - 96])
    //             mem_portA_wdata <= 4;       // blue logo
    //         else
    //             mem_portA_wdata <= 13;      // black
    //     end else begin
    //         r_scanline <= scanline;
    //         r_cycle <= cycle;
    //         mem_portA_we <= 1'b0;
    //         if ((r_scanline != scanline || r_cycle != cycle) && scanline < 9'd240 && ~cycle[8]) begin
    //             mem_portA_addr <= {scanline[7:0], cycle[7:0]};
    //             mem_portA_wdata <= color;
    //             mem_portA_we <= 1'b1;
    //         end
    //     end
    // end

    // audio stuff
   localparam AUDIO_RATE=32000;        // weird only 32K sampling rate works
//    localparam AUDIO_RATE=96000;
    // localparam AUDIO_RATE=48000;
    localparam AUDIO_CLK_DELAY = CLKFRQ * 1000 / AUDIO_RATE / 2;

    reg [15:0] audio_sample_word [1:0], audio_sample_word0 [1:0];
    always @(posedge clk_pixel) begin       // crossing clock domain
        audio_sample_word0[0] <= sample;
        audio_sample_word[0] <= audio_sample_word0[0];
        audio_sample_word0[1] <= sample;
        audio_sample_word[1] <= audio_sample_word0[1];
    end

    // //
    // // Video
    // //
    // // We support both 1:1 pixel aspect ratio, and 8:7
    // // - 7 NES pixels are mapped to 21 or 24 HDMI pixels horizontally in these 2 modes.
    // // - For 8:7, the follows are "border" HDMI pixels (0 to 23) that combine 2 neighboring NES pixels
    // //      3:  110,146  6: 219,37   10: 73,183; 
    // //      13: 183,73   17: 37,219  20: 146,110
    // //   For 1:1, there's no border pixels. Each NES pixel is expanded to 3 HDMI pixels.
    // // - For 8:7, total width is 36*24 + 13 = 877. Therefore x goes from 201 to 1077.
    // reg r2_active;
    // reg [4:0] xs, r_xs, r2_xs;       // x step for each 7 NES pixel group, 0-23 for 8:7 pixel aspect ratio, or 0-20 for 1:1 pixel aspect ratio
    // wire xload = asp8x7_on ? 
    //       (xs == 5'd0 || xs == 5'd3 || xs == 5'd6 || xs == 5'd10 || xs == 5'd13 || xs == 5'd17 || xs == 5'd20)
    //     : (xs == 5'd0 || xs == 5'd3 || xs == 5'd6 || xs == 5'd9 || xs == 5'd12 || xs == 5'd15 || xs == 5'd18);
    // reg r_xload;
    // // x is incremented whenver xload is 1
    // assign y = ONE_THIRD[cy];
    // assign mem_portB_addr = {y, x};
    // // assign led = ~{2'b0, mem_portB_rdata}; 
    // reg [23:0] NES_PALETTE [0:63];
    // // Mix ratio of border pixels for 8x7 pixel aspect ratio
    // reg [15:0] mixratio;
    // reg mix;
    // wire [15:0] next_mixratio = ~asp8x7_on ? 16'b0 :            // no mixing for 1:1 pixel aspect ratio
    //                        r_xs == 5'd3 ? {8'd110,8'd146} :
    //                        r_xs == 5'd6 ? {8'd219,8'd37} :
    //                        r_xs == 5'd10 ? {8'd73,8'd183} :
    //                        r_xs == 5'd13 ? {8'd183,8'd73} :
    //                        r_xs == 5'd17 ? {8'd37,8'd219} :
    //                        r_xs == 5'd20 ? {8'd146,8'd110} : 16'b0;
    // wire next_mix = r_xs == 5'd3 || r_xs == 5'd6 || r_xs == 5'd10 || r_xs == 5'd13 || r_xs == 5'd17 || r_xs == 5'd20;
    // reg [23:0] rgbv, r_rgbv;
    // wire [15:0] rmix = r_rgbv[23:16]*mixratio[15:8] + rgbv[23:16]*mixratio[7:0];
    // wire [15:0] gmix = r_rgbv[15:8]*mixratio[15:8] + rgbv[15:8]*mixratio[7:0];
    // wire [15:0] bmix = r_rgbv[7:0]*mixratio[15:8] + rgbv[7:0]*mixratio[7:0];
    reg [23:0] rgb;     // actual RGB output

    // // calc rgb value to hdmi
    // always_ff @(posedge clk_pixel) begin
    //     if (asp8x7_on && cx == 11'd198 || ~asp8x7_on && cx == 11'd253)
    //         active <= 1'b1;
    //     if (asp8x7_on && cx == 11'd1075 || ~asp8x7_on && cx == 11'd1021)
    //         active <= 1'b0;

    //     // calculate pixel rgb through 3 cycles
    //     // 0 - load: xmem_portB_rdata = mem[{y,x}]
    //     r_xload <= xload;
    //     r_active <= active; r2_active <= r_active;
    //     r_xs <= xs; r2_xs <= r_xs;
    //     if (active) begin
    //         if (asp8x7_on)
    //             xs <= xs == 5'd23 ? 0 : xs + 1;
    //         else
    //             xs <= xs == 5'd20 ? 0 : xs + 1;
    //     end

    //     // 1 - look up palette and load mixratio
    //     if (r_active && r_xload) begin
    //         x <= x + 1;
    //         rgbv <= NES_PALETTE[mem_portB_rdata];
    //         r_rgbv <= rgbv;
    //     end
    //     mixratio <= next_mixratio;
    //     mix <= next_mix;

    //     // 2 - mix rgb and output
    //     if (r2_active) begin
    //         if (asp8x7_on && mix)
    //             rgb <= {rmix[15:8], gmix[15:8], bmix[15:8]};
    //         else
    //             rgb <= rgbv;
    //     end else
    //         rgb <= 24'b0;

    //     if (cx == 0) begin
    //         x <= 0;
    //         xs <= 0; r_xs <= 0; r2_xs <= 0;
    //     end
    // end
    // // calc rgb value to hdmi
    reg     [0:128*128-1] fontMem=16384'h00000000000000000000000000000000_00007E81A58181BD9981817E00000000_00007EFFDBFFFFC3E7FFFF7E00000000_000000006CFEFEFEFE7C381000000000_0000000010387CFE7C38100000000000_000000183C3CE7E7E718183C00000000_000000183C7EFFFF7E18183C00000000_000000000000183C3C18000000000000_FFFFFFFFFFFFE7C3C3E7FFFFFFFFFFFF_00000000003C664242663C0000000000_FFFFFFFFFFC399BDBD99C3FFFFFFFFFF_00001E0E1A3278CCCCCCCC7800000000_00003C666666663C187E181800000000_00003F333F3030303070F0E000000000_00007F637F6363636367E7E6C0000000_0000001818DB3CE73CDB181800000000_0080C0E0F0F8FEF8F0E0C08000000000_0002060E1E3EFE3E1E0E060200000000_0000183C7E1818187E3C180000000000_00006666666666666600666600000000_00007FDBDBDB7B1B1B1B1B1B00000000_007CC660386CC6C66C380CC67C000000_0000000000000000FEFEFEFE00000000_0000183C7E1818187E3C187E30000000_0000183C7E1818181818181800000000_0000181818181818187E3C1800000000_0000000000180CFE0C18000000000000_00000000003060FE6030000000000000_000000000000C0C0C0FE000000000000_00000000002466FF6624000000000000_000000001038387C7CFEFE0000000000_00000000FEFE7C7C3838100000000000_00000000000000000000000000000000_0000183C3C3C18181800181800000000_00666666240000000000000000000000_0000006C6CFE6C6C6CFE6C6C00000000_18187CC6C2C07C060686C67C18180000_00000000C2C60C183060C68600000000_0000386C6C3876DCCCCCCC7600000000_00303030600000000000000000000000_00000C18303030303030180C00000000_000030180C0C0C0C0C0C183000000000_0000000000663CFF3C66000000000000_000000000018187E1818000000000000_00000000000000000018181830000000_000000000000007E0000000000000000_00000000000000000000181800000000_0000000002060C183060C08000000000_00007CC6C6CEDEF6E6C6C67C00000000_00001838781818181818187E00000000_00007CC6060C183060C0C6FE00000000_00007CC606063C060606C67C00000000_00000C1C3C6CCCFE0C0C0C1E00000000_0000FEC0C0C0FC060606C67C00000000_00003860C0C0FCC6C6C6C67C00000000_0000FEC606060C183030303000000000_00007CC6C6C67CC6C6C6C67C00000000_00007CC6C6C67E0606060C7800000000_00000000181800000018180000000000_00000000181800000018183000000000_000000060C18306030180C0600000000_00000000007E00007E00000000000000_0000006030180C060C18306000000000_00007CC6C60C18181800181800000000_00007CC6C6C6DEDEDEDCC07C00000000_000010386CC6C6FEC6C6C6C600000000_0000FC6666667C66666666FC00000000_00003C66C2C0C0C0C0C2663C00000000_0000F86C6666666666666CF800000000_0000FE6662687868606266FE00000000_0000FE6662687868606060F000000000_00003C66C2C0C0DEC6C6663A00000000_0000C6C6C6C6FEC6C6C6C6C600000000_00003C18181818181818183C00000000_00001E0C0C0C0C0CCCCCCC7800000000_0000E666666C78786C6666E600000000_0000F06060606060606266FE00000000_0000C3E7FFFFDBC3C3C3C3C300000000_0000C6E6F6FEDECEC6C6C6C600000000_00007CC6C6C6C6C6C6C6C67C00000000_0000FC6666667C60606060F000000000_00007CC6C6C6C6C6C6D6DE7C0C0E0000_0000FC6666667C6C666666E600000000_00007CC6C660380C06C6C67C00000000_0000FFDB991818181818183C00000000_0000C6C6C6C6C6C6C6C6C67C00000000_0000C3C3C3C3C3C3C3663C1800000000_0000C3C3C3C3C3DBDBFF666600000000_0000C3C3663C18183C66C3C300000000_0000C3C3C3663C181818183C00000000_0000FFC3860C183060C1C3FF00000000_00003C30303030303030303C00000000_00000080C0E070381C0E060200000000_00003C0C0C0C0C0C0C0C0C3C00000000_10386CC6000000000000000000000000_00000000000000000000000000FF0000_30301800000000000000000000000000_0000000000780C7CCCCCCC7600000000_0000E06060786C666666667C00000000_00000000007CC6C0C0C0C67C00000000_00001C0C0C3C6CCCCCCCCC7600000000_00000000007CC6FEC0C0C67C00000000_0000386C6460F060606060F000000000_000000000076CCCCCCCCCC7C0CCC7800_0000E060606C7666666666E600000000_00001818003818181818183C00000000_00000606000E06060606060666663C00_0000E06060666C78786C66E600000000_00003818181818181818183C00000000_0000000000E6FFDBDBDBDBDB00000000_0000000000DC66666666666600000000_00000000007CC6C6C6C6C67C00000000_0000000000DC66666666667C6060F000_000000000076CCCCCCCCCC7C0C0C1E00_0000000000DC7666606060F000000000_00000000007CC660380CC67C00000000_0000103030FC30303030361C00000000_0000000000CCCCCCCCCCCC7600000000_0000000000C3C3C3C3663C1800000000_0000000000C3C3C3DBDBFF6600000000_0000000000C3663C183C66C300000000_0000000000C6C6C6C6C6C67E060CF800_0000000000FECC183060C6FE00000000_00000E18181870181818180E00000000_00001818181800181818181800000000_0000701818180E181818187000000000_000076DC000000000000000000000000_0000000010386CC6C6C6FE0000000000;
    wire    [7:0] selectedChar;
    wire    [7:0] charID;
    assign charID = columnID+lineID*(FRAMEWIDTH/8);
    wire [7:0] lineID;
    wire [7:0] columnID;
    assign lineID = cy[9:4];
    assign columnID = currentX[10:3];
    wire [10:0] currentX;
    wire [9:0] currentY;
    assign currentX = (cx<FRAMEWIDTH)?cx[10:0]:(cx!=TOTALWIDTH-1)?FRAMEWIDTH:0;
    wire [11:0] currentChar;
    assign currentChar = columnID+lineID*(FRAMEWIDTH/8);
    assign selectedChar=(currentChar<2000)?stringScreen1[currentChar]:stringScreen2[currentChar-2000];

    reg     [7:0] stringScreen1 [0:1999];
    reg     [7:0] stringScreen2 [0:699];
    reg    [0:16*8-1] charMem;
    int i;
//    initial $readmemh("font.hex", fontMem);
    initial begin
        for(i=0;i<2000;i=i+1)
        begin
            stringScreen1[i]=8'h00;
        end
        for(i=0;i<700;i=i+1)
        begin
            stringScreen2[i]=8'h00;
        end
    stringScreen1[0:11]="Hello World!";

    stringScreen1[1988]="T";
    stringScreen1[1989]="h";
    stringScreen1[1990]="e";
    stringScreen1[1991]=" ";
    stringScreen1[1992]="e";
    stringScreen1[1993]="n";
    stringScreen1[1994]="d";
    stringScreen1[1995]=" ";
    stringScreen1[1996]="y";
    stringScreen1[1997]="a";
    stringScreen1[1998]="l";
    stringScreen1[1999]="l";
    stringScreen2[0:13]="!Second String";
    stringScreen2[691:699]="Finished.";
    end

    always_ff @(posedge clk_pixel) begin
//            if(cy>10'd700)
//            begin
//                rgb <= {8'hff, 8'd0, 8'hff};
//            end
//            else if(cx>11'd1200)
//            begin
//                rgb <= {8'hff, 8'hff, 8'h0};
//            end
//            else
//            begin
//                rgb <= {8'h0, 8'h0, 8'h0};
//            end
//        if(cx<=64&&cy<=128)
        begin
           charMem <= fontMem[selectedChar*128+:127];            
            // charMem <= fontMem[(charID*128)+:127];
            rgb <= (charMem[currentX[2:0]+(cy[3:0]*8)]==1'b1)?{8'hff,8'hff,8'hff}:{8'(columnID<<2), 8'd0, 8'(lineID<<2)};
        end

//      
    end

    // HDMI output.
    logic[2:0] tmds;

    hdmi #( .VIDEO_ID_CODE(VIDEOID), 
            .DVI_OUTPUT(0), 
            .VIDEO_REFRESH_RATE(VIDEO_REFRESH),
            .IT_CONTENT(1),
            .AUDIO_RATE(AUDIO_RATE), 
            .AUDIO_BIT_WIDTH(AUDIO_BIT_WIDTH),
            .START_X(0),
            .START_Y(0) )

    hdmi( .clk_pixel_x5(clk_5x_pixel), 
          .clk_pixel(clk_pixel), 
          .clk_audio(clk_audio),
          .rgb(rgb), 
          .reset( ~resetn ),
          .audio_sample_word(audio_sample_word),
          .tmds(tmds), 
          .tmds_clock(tmdsClk), 
          .cx(cx), 
          .cy(cy),
          .frame_width( frameWidth ),
          .frame_height( frameHeight ) );

    // Gowin LVDS output buffer
    ELVDS_OBUF tmds_bufds [3:0] (
        .I({clk_pixel, tmds}),
        .O({tmds_clk_p, tmds_d_p}),
        .OB({tmds_clk_n, tmds_d_n})
    );


endmodule
