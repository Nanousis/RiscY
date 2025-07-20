module word_bram(
    input clk,
    input reset,
    input ren,
    input wen,
    input [3:0] byte_select_vector,
    input [31:0] data_in,
    input [10:0] PC,
    input [10:0] address,
    output [31:0] instr,
    output [31:0] data_out
);

    wire [7:0] data_in0, data_in1, data_in2, data_in3;
    wire [7:0] instr0, instr1, instr2, instr3;
    wire [7:0] data_out0, data_out1, data_out2, data_out3;
    wire wen0, wen1, wen2, wen3;

    // Check if write enable and read enable are both 1
    wire debug_wren;
    assign debug_wren = wen; 


    //*********** DATA IN - SPLIT ***********//
    assign data_in0 = data_in[7:0];
    assign data_in1 = data_in[15:8];
    assign data_in2 = data_in[23:16];
    assign data_in3 = data_in[31:24];
    //*********** WEN SPLIT ***********//
    assign wen0 = (byte_select_vector[0] & debug_wren);
    assign wen1 = (byte_select_vector[1] & debug_wren);
    assign wen2 = (byte_select_vector[2] & debug_wren);
    assign wen3 = (byte_select_vector[3] & debug_wren);

    //*********** INSTRUCTIONS OUT - SPLIT ***********//
    assign instr[7:0]   = instr0;
    assign instr[15:8]  = instr1;
    assign instr[23:16] = instr2;
    assign instr[31:24] = instr3;

    //*********** DATA OUT - SPLIT ***********//
    assign data_out[7:0]    = data_out0;
    assign data_out[15:8]   = data_out1;
    assign data_out[23:16]  = data_out2;
    assign data_out[31:24]  = data_out3;
    
    // BRAM_0 -> address bits [7:0]
    Gowin_DPB_program BRAM_0(
        .douta(instr0), //output [7:0] douta 
        .clka(clk), //input clka 
        .ocea(1'b1), //input ocea 
        .cea(1'b1), //input cea 
        .reseta(!reset), //input reseta 
        .wrea(1'b0), //input wrea
        .ada(PC), //input [10:0] ada 
        .dina(dina), //input [7:0] dina
        
        .doutb(data_out0), //output [7:0] doutb
        .clkb(clk), //input clkb
        .oceb(1'b1), //input oceb
        .ceb(1'b1), //input ceb
        .resetb(!reset), //input resetb
        .wreb(wen0), //input wreb
        .adb(address), //input [10:0] adb
        .dinb(data_in0) //input [7:0] dinb
    );

    // BRAM_1 -> address bits [15:8]
    Gowin_DPB_program BRAM_1(
        .douta(instr1), //output [7:0] douta 
        .clka(clk), //input clka 
        .ocea(1'b1), //input ocea 
        .cea(1'b1), //input cea 
        .reseta(!reset), //input reseta 
        .wrea(1'b0), //input wrea
        .ada(PC), //input [10:0] ada 
        .dina(dina), //input [7:0] dina
        
        .doutb(data_out1), //output [7:0] doutb
        .clkb(clk), //input clkb
        .oceb(1'b1), //input oceb
        .ceb(1'b1), //input ceb
        .resetb(!reset), //input resetb
        .wreb(wen1), //input wreb
        .adb(address), //input [10:0] adb
        .dinb(data_in1) //input [7:0] dinb
    );

    // BRAM_2 -> address bits [23:16]
    Gowin_DPB_program BRAM_2(
        .douta(instr2), //output [7:0] douta 
        .clka(clk), //input clka 
        .ocea(1'b1), //input ocea 
        .cea(1'b1), //input cea 
        .reseta(!reset), //input reseta 
        .wrea(1'b0), //input wrea
        .ada(PC), //input [10:0] ada 
        .dina(dina), //input [7:0] dina
        
        .doutb(data_out2), //output [7:0] doutb
        .clkb(clk), //input clkb
        .oceb(1'b1), //input oceb
        .ceb(1'b1), //input ceb
        .resetb(!reset), //input resetb
        .wreb(wen2), //input wreb
        .adb(address), //input [10:0] adb
        .dinb(data_in2) //input [7:0] dinb
    );

    // BRAM_3 -> address bits [31:24]
    Gowin_DPB_program BRAM_3(
        .douta(instr3), //output [7:0] douta 
        .clka(clk), //input clka 
        .ocea(1'b1), //input ocea 
        .cea(1'b1), //input cea 
        .reseta(!reset), //input reseta 
        .wrea(1'b0), //input wrea
        .ada(PC), //input [10:0] ada 
        .dina(dina), //input [7:0] dina
        
        .doutb(data_out3), //output [7:0] doutb
        .clkb(clk), //input clkb
        .oceb(1'b1), //input oceb
        .ceb(1'b1), //input ceb
        .resetb(!reset), //input resetb
        .wreb(wen3), //input wreb
        .adb(address), //input [10:0] adb
        .dinb(data_in3) //input [7:0] dinb
    );


endmodule