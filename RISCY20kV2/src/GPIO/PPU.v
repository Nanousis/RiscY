module PPU(
    input clk,
    input clk_cpu,
    input reset,
    // input ren,
    input wen,
    input [15:0] address,
    input [31:0] data_in,
    input [3:0] byte_select,
    input [13:0] xcursor,
    input [13:0] ycursor,
    input is_blank,
    output reg [31:0] data_out=32'hdeadbeaf,
	output reg         [4:0]   RGB_B,
	output reg         [5:0]   RGB_G,
	output reg         [4:0]   RGB_R,

    output reg [22:0] frame_buffer_addr,
    output reg screen_change
);

    parameter MAX_WIDTH=15'd400;
    parameter MAX_OBJ=20;


    reg textEn=1;
    reg spritesEn=0;
    reg [7:0]writeAttr;
    reg [7:0]writeText;
    reg [7:0] writeSprite;
    wire [7:0] dataOutTxt;      // BRAM read text data
    wire [7:0] dataOutAttr;     // BRAM read attributes data
    wire [7:0] dataOutSprite;   // BRAM read sprite data

    wire [13:0] xcursor_next,ycursor_next,spriteCursor_x;
    // wire [13:0] xcursor_prev=xcursor-14'b1;
    wire [12:0] xPos,yPos;
    assign xPos = xcursor[13:1];
    assign yPos = ycursor[13:1];
    reg     [0:128*128-1] fontMem=32768'h00000000000000000000000000000000_00007E81A58181BD9981817E00000000_00007EFFDBFFFFC3E7FFFF7E00000000_000000006CFEFEFEFE7C381000000000_0000000010387CFE7C38100000000000_000000183C3CE7E7E718183C00000000_000000183C7EFFFF7E18183C00000000_000000000000183C3C18000000000000_FFFFFFFFFFFFE7C3C3E7FFFFFFFFFFFF_0000000000003C664242663C00000000_FFFFFFFFFFC399BDBD99C3FFFFFFFFFF_00001E0E1A3278CCCCCCCC7800000000_00003C666666663C187E181800000000_00003F333F3030303070F0E000000000_00007F637F6363636367E7E6C0000000_0000001818DB3CE73CDB181800000000_0080C0E0F0F8FEF8F0E0C08000000000_0002060E1E3EFE3E1E0E060200000000_0000183C7E1818187E3C180000000000_00006666666666666600666600000000_00007FDBDBDB7B1B1B1B1B1B00000000_007CC660386CC6C66C380CC67C000000_0000000000000000FEFEFEFE00000000_0000183C7E1818187E3C187E30000000_0000183C7E1818181818181800000000_0000181818181818187E3C1800000000_0000000000180CFE0C18000000000000_00000000003060FE6030000000000000_000000000000C0C0C0FE000000000000_00000000002466FF6624000000000000_000000001038387C7CFEFE0000000000_00000000FEFE7C7C3838100000000000_00000000000000000000000000000000_0000183C3C3C18181800181800000000_00666666240000000000000000000000_0000006C6CFE6C6C6CFE6C6C00000000_18187CC6C2C07C060686C67C18180000_00000000C2C60C183060C68600000000_0000386C6C3876DCCCCCCC7600000000_00303030600000000000000000000000_00000C18303030303030180C00000000_000030180C0C0C0C0C0C183000000000_0000000000663CFF3C66000000000000_000000000018187E1818000000000000_00000000000000000018181830000000_000000000000007E0000000000000000_00000000000000000000181800000000_0000000002060C183060C08000000000_00007CC6C6CEDEF6E6C6C67C00000000_00001838781818181818187E00000000_00007CC6060C183060C0C6FE00000000_00007CC606063C060606C67C00000000_00000C1C3C6CCCFE0C0C0C1E00000000_0000FEC0C0C0FC060606C67C00000000_00003860C0C0FCC6C6C6C67C00000000_0000FEC606060C183030303000000000_00007CC6C6C67CC6C6C6C67C00000000_00007CC6C6C67E0606060C7800000000_00000000181800000018180000000000_00000000181800000018183000000000_000000060C18306030180C0600000000_00000000007E00007E00000000000000_0000006030180C060C18306000000000_00007CC6C60C18181800181800000000_00007CC6C6C6DEDEDEDCC07C00000000_000010386CC6C6FEC6C6C6C600000000_0000FC6666667C66666666FC00000000_00003C66C2C0C0C0C0C2663C00000000_0000F86C6666666666666CF800000000_0000FE6662687868606266FE00000000_0000FE6662687868606060F000000000_00003C66C2C0C0DEC6C6663A00000000_0000C6C6C6C6FEC6C6C6C6C600000000_00003C18181818181818183C00000000_00001E0C0C0C0C0CCCCCCC7800000000_0000E666666C78786C6666E600000000_0000F06060606060606266FE00000000_0000C3E7FFFFDBC3C3C3C3C300000000_0000C6E6F6FEDECEC6C6C6C600000000_00007CC6C6C6C6C6C6C6C67C00000000_0000FC6666667C60606060F000000000_00007CC6C6C6C6C6C6D6DE7C0C0E0000_0000FC6666667C6C666666E600000000_00007CC6C660380C06C6C67C00000000_0000FFDB991818181818183C00000000_0000C6C6C6C6C6C6C6C6C67C00000000_0000C3C3C3C3C3C3C3663C1800000000_0000C3C3C3C3C3DBDBFF666600000000_0000C3C3663C18183C66C3C300000000_0000C3C3C3663C181818183C00000000_0000FFC3860C183060C1C3FF00000000_00003C30303030303030303C00000000_00000080C0E070381C0E060200000000_00003C0C0C0C0C0C0C0C0C3C00000000_10386CC6000000000000000000000000_00000000000000000000000000FF0000_30301800000000000000000000000000_0000000000780C7CCCCCCC7600000000_0000E06060786C666666667C00000000_00000000007CC6C0C0C0C67C00000000_00001C0C0C3C6CCCCCCCCC7600000000_00000000007CC6FEC0C0C67C00000000_0000386C6460F060606060F000000000_000000000076CCCCCCCCCC7C0CCC7800_0000E060606C7666666666E600000000_00001818003818181818183C00000000_00000606000E06060606060666663C00_0000E06060666C78786C66E600000000_00003818181818181818183C00000000_0000000000E6FFDBDBDBDBDB00000000_0000000000DC66666666666600000000_00000000007CC6C6C6C6C67C00000000_0000000000DC66666666667C6060F000_000000000076CCCCCCCCCC7C0C0C1E00_0000000000DC7666606060F000000000_00000000007CC660380CC67C00000000_0000103030FC30303030361C00000000_0000000000CCCCCCCCCCCC7600000000_0000000000C3C3C3C3663C1800000000_0000000000C3C3C3DBDBFF6600000000_0000000000C3663C183C66C300000000_0000000000C6C6C6C6C6C67E060CF800_0000000000FECC183060C6FE00000000_00000E18181870181818180E00000000_00001818181800181818181800000000_0000701818180E181818187000000000_000076DC000000000000000000000000_0000000010386CC6C6C6FE0000000000;
   	wire [14:0] currentCharacter;
    reg [14:0] spritePointer;
	// used in order to synchronize the first line of the frame
	// this is wrong though. the first column would be wrong
    assign xcursor_next = xcursor+14'b1;
    assign spriteCursor_x = xcursor[2:1]<<14'b1;
	assign ycursor_next = ycursor-14'b1;
	assign currentCharacter = {ycursor[9:5],xcursor_next[9:4]};

    wire [0:16*8-1] charMem;    // TextMode: 8x16 symbols
    assign charMem = fontMem[dataOutTxt*128+:128]; // read symbol from BRAM 


    reg [31:0] objectAttributes[0:MAX_OBJ-1];
    wire [31:0] current_objectAttributes = objectAttributes[0]; // [31]-> enable [24:16] -> x   [15:9] -> spriteID [8:0] -> yPos 
    wire [8:0] x_obj,y_obj;
    assign x_obj = current_objectAttributes[24:16];
    assign y_obj = current_objectAttributes[8:0];
    reg [6:0] spriteID;

    reg [15:0] lineBuffer[0:MAX_OBJ-1];
    reg [9:0] objectPointer=0;
    reg hblank=0;

    wire [15:0] data_in_half=(byte_select[1:0] == 2'b11) ? data_in[15:0] : data_in[31:16];
    reg [7:0] r,g,b;


    DPBRAM #(
        .DATA_WIDTH(8),  // 1 byte per address
        .ADDR_WIDTH(11)  // 2048 addresses
    ) text_Buffer (
        .clkA(clk_cpu), 
        .clkB(clk_cpu),
        .we_a(textEn), //write enable
        .addr_a(text_address[15:1]), //write address
        .dout_a(), //not needed 
        .din_a(writeText), //write text from one port 

        .we_b(1'b0), 
        .addr_b(currentCharacter), // read address
        .din_b(),   //not needed
        .dout_b(dataOutTxt) //read text from the other port
    );

    DPBRAM #(
        .DATA_WIDTH(8),  // 1 byte per address
        .ADDR_WIDTH(11)  // 2048 addresses
    ) attributes_Buffer (
        .clkA(clk_cpu), 
        .clkB(clk_cpu),
        .we_a(textEn), //write enable
        .addr_a(text_address[15:1]), //write address
        .dout_a(), //not needed 
        .din_a(writeAttr), //write attributes from one port 

        .we_b(1'b0), 
        .addr_b(currentCharacter), // read address
        .din_b(),   //not needed
        .dout_b(dataOutAttr) //read attributes from the other port
    );

    DPBRAM #(
    .DATA_WIDTH(8),  // 1 byte per address
    .ADDR_WIDTH(14)  // 4096 addresses
    )sprite_BRAM(
        .clkA(clk_cpu), 
        .clkB(clk_cpu),
        .we_a(spritesEn), //write enable
        .addr_a(text_address[15:1]-16'd2048), //write address
        .dout_a(), //not needed 
        .din_a(writeSprite), //write sprites from one port 

        .we_b(1'b0), 
        .addr_b((~hblank)?spritePointer:objectPointer), // read address
        .din_b(),   //not needed
        .dout_b(dataOutSprite) //read sprites from the other port
    );

    reg [23:0] counter=0;
    // reg [8:0] xCounter=9'b001111111;
    
    reg [31:0] text_address;


    always@(posedge clk_cpu or negedge reset)
    begin
        if(~reset)
        begin
            textEn<=0;
            spritesEn<=0;
            writeAttr<=0;
            writeText<=0;
            writeSprite<=0;
            text_address<=0;
            screen_change<=0;
            frame_buffer_addr<=0;
        end
        else
        begin
            textEn<=0;
            spritesEn<=0;
            writeAttr<=0;
            writeText<=0;
            writeSprite<=0;
            text_address<=address;
            if(wen)begin
                // from 0->2048 is the text memory
                if(address==16'h2800)begin
                    screen_change<=(data_in[0]==1'b1)?1:0;
                end
                if(address==16'h2804)begin
                    frame_buffer_addr<=data_in[24:2];
                end
                if(address<16'd3072)begin
                    textEn<=1;
                    writeText<=data_in_half[7:0];
                    writeAttr<=data_in_half[15:8];
                end
                // from 4096->8192 is the sprite memory
                else if(address<16'd8192-1)
                begin
                    spritesEn<=1;
                    writeSprite<=data_in_half[7:0];
                end
                else
                begin
                    objectAttributes[(address-16'd8192)>>2]<=data_in;
                end
                //  from 8192->12288 is the object attributes
                // else if(address<16'd12288) 
            end
        end

    end

    reg [4:0] cur_sprite_buf;
    reg [8:0] buffer_counter=0;
    reg [15:0] obj_line_buffer;
    reg hasStarted=0;

    // reg [7:0] r_buff [7:0];
    // reg [7:0] g_buff [7:0];
    // reg [7:0] b_buff [7:0];
    always@(posedge clk or negedge reset)
    begin
        if(~reset)
        begin
            // lineBuffer<=0;
            hblank<=0;
            cur_sprite_buf<=0;
            buffer_counter<=0;
            obj_line_buffer<=0;
            hasStarted<=0;
            for(i=0;i<MAX_OBJ;i=i+1)
            begin
                lineBuffer[i]<=0;
            end
            // objectAttributes = 32'b1000000_001111111_0000001_011111111; // [31]-> enable [24:16] -> x   [15:9] -> spriteID [8:0] -> yPos 
        end
        else
        begin

            spriteID <= current_objectAttributes[15:9];
            if(dataOutTxt>=8'd128)
            begin 
                spritePointer<=(dataOutTxt-128)*32 + ycursor[4:1]*2+xcursor_next[3]; 
            end
            else
            begin
                spritePointer<=0;
            end
            if(!is_blank)
            begin
                hasStarted<=0;
            end
            if(is_blank&&~hblank&&hasStarted==0)
            begin
                hasStarted<=1;
                hblank <= 1;
                cur_sprite_buf <= 0;
                buffer_counter <= 0;
                objectPointer <= objectAttributes[0][15:9]*32 + ((ycursor[13:1]-objectAttributes[0][8:0])<<1);
            end
            if(hblank)
            begin

                case(buffer_counter[0])
                    1'd0:begin
                        lineBuffer[cur_sprite_buf][7:0]<=dataOutSprite;
                        objectPointer<=objectPointer+9'b1;
                    end
                    1'd1:begin
                        lineBuffer[cur_sprite_buf][15:8]<=dataOutSprite;
                        cur_sprite_buf<=cur_sprite_buf+4'b1;
                        // get the next object's pointer
                        objectPointer <= objectAttributes[cur_sprite_buf+1][15:9]*32 + ((ycursor[13:1]-objectAttributes[cur_sprite_buf+1][8:0])<<1);
                    end
                endcase
                buffer_counter<=buffer_counter+7'b1;
                if(cur_sprite_buf==MAX_OBJ)
                begin
                    hblank<=0;
                end
            end
        end
    end

    integer i;
    // rgb output
    always@(xcursor or ycursor)
    begin
        r = 0;
        g = 0;
        b = 0;
         if(ycursor>=608||xcursor>=MAX_WIDTH)
         begin
             if(xcursor>MAX_WIDTH+40)
             begin
                 case(lineBuffer[0][xcursor+:2])
                     2'b0:begin
                         r = 0;
                         g = 0;
                         b = 0;
                     end
                     2'b1:begin
                         r = 64;
                         g = 64;
                         b = 64;
                     end
                     2'b10:begin
                         r = 150;
                         g = 150;
                         b = 150;
                     end
                     2'b11:begin
                         r = 255;
                         g = 255;
                         b = 255;
                     end
                 endcase
             end
             else
             begin
                 r=50;
                 g=0;
                 b=50;
             end
        end

        //                 // if(dataOutSprite[xcursor[3:1]]==1'b1)begin

        // end
        if(dataOutTxt>=128)
        begin
            // if(dataOutSprite[xcursor[3:1]]==1'b1)begin
            case(dataOutSprite[spriteCursor_x+:2])
                2'b0:begin
                    r = 0;
                    g = 0;
                    b = 0;
                end
                2'b1:begin
                    r = 64;
                    g = 64;
                    b = 64;
                end
                2'b10:begin
                    r = 150;
                    g = 150;
                    b = 150;
                end
                2'b11:begin
                    r = 255;
                    g = 255;
                    b = 255;
                end
            endcase
        end
        else
        begin
            if (charMem[{yPos[3:0],xPos[2:0]}] == 1'b1) begin
                if (dataOutAttr[3:0] == 4'b0000) begin
                    r = 0;   // Black
                    g = 0;  // Black
                    b = 0;   // Black
                end
                else if (dataOutAttr[3:0] == 4'b0001) begin
                    r = 127;   // Red
                    g = 0;  // Red
                    b = 0;   // Red
                end
                else if (dataOutAttr[3:0] == 4'b0010) begin
                    r = 0;   // Green
                    g = 127;  // Green
                    b = 0;   // Green
                end
                else if (dataOutAttr[3:0] == 4'b0011) begin
                    r = 127;   // Mustard
                    g = 127;  // Mustard
                    b = 0;   // Mustard
                end
                else if (dataOutAttr[3:0] == 4'b0100) begin
                    r = 0;   // Blue
                    g = 0;  // Blue
                    b = 127;   // Blue
                end
                else if (dataOutAttr[3:0] == 4'b0101) begin
                    r = 127;   // Violet
                    g = 0;  // Violet
                    b = 127;   // Violet
                end
                else if (dataOutAttr[3:0] == 4'b0110) begin
                    r = 0;   // Cyan
                    g = 127;  // Cyan
                    b = 127;   // Cyan
                end
                else if (dataOutAttr[3:0] == 4'b0111) begin
                    r = 64;   // Dark Gray
                    g = 64;  // Dark Gray
                    b = 64;   // Dark Gray
                end
                else if (dataOutAttr[3:0] == 4'b1000) begin
                    r = 127;   // Light Gray
                    g = 127;  // Light Gray
                    b = 127;   // Light Gray
                end
                else if (dataOutAttr[3:0] == 4'b1001) begin
                    r = 255;   // Intense Red
                    g = 0;  // Intense Red
                    b = 0;   // Intense Red
                end
                else if (dataOutAttr[3:0] == 4'b1010) begin
                    r = 0;   // Intense Green
                    g = 255;  // Intense Green
                    b = 0;   // Intense Green
                end
                else if (dataOutAttr[3:0] == 4'b1011) begin
                    r = 255;   // Intense Yellow
                    g = 255;  // Intense Yellow
                    b = 0;   // Intense Yellow
                end
                else if (dataOutAttr[3:0] == 4'b1100) begin
                    r = 0;   // Intense Blue
                    g = 0;  // Intense Blue
                    b = 255;   // Intense Blue
                end
                else if (dataOutAttr[3:0] == 4'b1101) begin
                    r = 255;   // Intense Magenta
                    g = 0;  // Intense Magenta
                    b = 255;   // Intense Magenta
                end
                else if (dataOutAttr[3:0] == 4'b1110) begin
                    r = 0;   // Intense Cyan
                    g = 255;  // Intense Cyan
                    b = 255;   // Intense Cyan
                end
                else if (dataOutAttr[3:0] == 4'b1111) begin
                    r = 255;   // White
                    g = 255;  // White
                    b = 255;   // White
                end
            end
            //BACKROUND COLOR
            else begin
                if (dataOutAttr[6:4] == 3'b000) begin
                    r = 0;   // Black
                    g = 0;  // Black
                    b = 0;   // Black
                end
                else if (dataOutAttr[6:4] == 3'b001) begin
                    b = 0;   // Red
                    g = 0;  // Red
                    r = 255;   // Red
                end
                else if (dataOutAttr[6:4] == 3'b010) begin
                    b = 0;   // Green
                    g = 255;  // Green
                    r = 0;   // Green
                end
                else if (dataOutAttr[6:4] == 3'b011) begin
                    b = 0;    // Yellow
                    g = 255;   // Yellow
                    r = 255;   // Yellow
                end
                else if (dataOutAttr[6:4] == 3'b100) begin
                    b = 255;   // Blue
                    g = 0;  // Blue
                    r = 0;   // Blue
                end
                else if (dataOutAttr[6:4] == 3'b101) begin
                    b = 255;   // Magenta
                    g = 0;  // Magenta
                    r = 255;   // Magenta
                end
                else if (dataOutAttr[6:4] == 3'b110) begin
                    b = 255;   // Cyan
                    g = 255;  // Cyan
                    r = 0;   // Cyan
                end
                else if (dataOutAttr[6:4] == 3'b111) begin
                    b = 255;   // White
                    g = 255;  // White
                    r = 255;   // White
                end
            end
        end
for (i = 0; i < MAX_OBJ; i = i + 1) begin
    if (objectAttributes[i][31] && 
        objectAttributes[i][8:0] <= yPos && yPos < objectAttributes[i][8:0] + 16 && 
        objectAttributes[i][24:16] <= xPos && xPos < objectAttributes[i][24:16] + 8) begin
        case (lineBuffer[i][(xPos - objectAttributes[i][18:16]) << 1 +: 2])
            2'b1: begin
                r = 0;
                g = 0;
                b = 0;
            end
            2'b10: begin
                r = 150;
                g = 150;
                b = 150;
            end
            2'b11: begin
                r = 255;
                g = 255;
                b = 255;
            end
        endcase
    end
end
        if(hblank)
        begin
            r = 0;
            g = 155;
            b = 0;
        end
        RGB_R = r[7-:5];
        RGB_G = g[7-:6];
        RGB_B = b[7-:5];
    end

    
    // // BRAM_0 -> address bits [7:0]
    // Gowin_DPB_program BRAM_0(
    //     .douta(), //output [7:0] douta 
    //     .clka(clk), //input clka 
    //     .ocea(1'b1), //input ocea 
    //     .cea(1'b1), //input cea 
    //     .reseta(!reset), //input reseta 
    //     .wrea(1'b0), //input wrea
    //     .ada(), //input [10:0] ada 
    //     .dina(dina), //input [7:0] dina
        
    //     .doutb(data_out0), //output [7:0] doutb
    //     .clkb(clk), //input clkb
    //     .oceb(1'b1), //input oceb
    //     .ceb(1'b1), //input ceb
    //     .resetb(!reset), //input resetb
    //     .wreb(), //input wreb
    //     .adb(), //input [10:0] adb
    //     .dinb() //input [7:0] dinb
    // );



endmodule