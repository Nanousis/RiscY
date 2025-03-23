`define WORDBRAMSIZE 2048
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


    wire [31:0] instr_tmp[0:3];
    wire [31:0] data_out_tmp[0:3];
    
    reg [1:0] PC_select;
    reg [1:0] data_select;


    always@(*)begin
      
        if(address<`WORDBRAMSIZE)begin
            // first 8KB
            data_select=0;
        end
        else if(address<2*`WORDBRAMSIZE)begin
            // 8kB -> 16KB
            data_select=1;
        end
        else if(address<3*`WORDBRAMSIZE)begin
            // 16kB -> 24KB
            data_select=2;
        end
        else begin
            // 24kB -> 32KB
            data_select=3;
        end

        if(PC<`WORDBRAMSIZE)begin
            // first 8KB
            PC_select=0;
        end
        else if(PC<2*`WORDBRAMSIZE)begin
            // 8kB -> 16KB
            PC_select=1;
        end
        else if(PC<3*`WORDBRAMSIZE)begin
            // 16kB -> 24KB
            PC_select=2;
        end
        else begin
            // 24kB -> 32KB
            PC_select=3;
        end

    end
    
    //thinking of this, this will be wrong, need to cache the data_select and pc_select
    assign instr = instr_tmp[PC_select];
    assign data_out = data_out_tmp[data_select];
    word_bram bram0(
        .clk(clk),
        .reset(reset),
        .ren(ren),
        .wen((data_select==0)?wen:0),
        .byte_select_vector(byte_select_vector),
        .PC(PC),
        .data_in(data_in),
        .address(address),
        .instr(instr_tmp[0]),
        .data_out(data_out_tmp[0])
    );

    word_bram bram1(
        .clk(clk),
        .reset(reset),
        .ren(ren),
        .wen((data_select==1)?wen:0),
        .byte_select_vector(byte_select_vector),
        .PC(PC-1*`WORDBRAMSIZE),
        .data_in(data_in),
        .address(address-1*`WORDBRAMSIZE),
        .instr(instr_tmp[1]),
        .data_out(data_out_tmp[1])
    );
    word_bram bram2(
        .clk(clk),
        .reset(reset),
        .ren(ren),
        .wen((data_select==2)?wen:0),
        .byte_select_vector(byte_select_vector),
        .PC(PC-2*`WORDBRAMSIZE),
        .data_in(data_in),
        .address(address-2*`WORDBRAMSIZE),
        .instr(instr_tmp[2]),
        .data_out(data_out_tmp[2])
    );
    word_bram bram3(
        .clk(clk),
        .reset(reset),
        .ren(ren),
        .wen((data_select==3)?wen:0),
        .byte_select_vector(byte_select_vector),
        .PC(PC-3*`WORDBRAMSIZE),
        .data_in(data_in),
        .address(address-3*`WORDBRAMSIZE),
        .instr(instr_tmp[3]),
        .data_out(data_out_tmp[3])
    );


endmodule