module programMemory( 
    input clk,
    input reset,
    input [31:2] PC,
    input [31:2] address,
    input ren,
    input wen,
    input [31:0] data_in,
    input [3:0] byte_select_vector,

    output [31:0] instr,
    output [31:0] data_out
);  


    wire [31:0] instr0;
    wire [31:0] instr1;

    wire [31:0] data_out0;
    wire [31:0] data_out1;

    assign instr = (PC[20:2]<2048)? instr0:instr1;
    assign data_out = (address[20:2]<2048)?data_out0:data_out1;
    word_bram bram0(
        .clk(clk),
        .reset(reset),
        .ren(ren),
        .wen((address[20:2]<2048)?wen:0),
        .byte_select_vector(byte_select_vector),
        .PC(PC),
        .address(address),
        .instr(instr0),
        .data_out(data_out0)
    );

    word_bram bram1(
        .clk(clk),
        .reset(reset),
        .ren(ren),
        .wen((address[20:2]<2048)?0:wen),
        .byte_select_vector(byte_select_vector),
        .PC(PC),
        .address(address),
        .instr(instr1),
        .data_out(data_out1)
    );


endmodule