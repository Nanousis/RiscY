`define WORLDBRAMSIZE 2048
`define NUM_BRAMS 4

//this means that the total is 4*WORLDBRAMSIZE*NUM_BRAMS

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

    wire [31:0] instr_tmp[0:`NUM_BRAMS-1];
    wire [31:0] data_out_tmp[0:`NUM_BRAMS-1];
    
    reg [$clog2(`NUM_BRAMS)-1:0] PC_select;
    reg [$clog2(`NUM_BRAMS)-1:0] data_select;
    reg [$clog2(`NUM_BRAMS)-1:0] PC_select_reg;
    reg [$clog2(`NUM_BRAMS)-1:0] data_select_reg;

    always @(posedge clk) begin
        PC_select_reg <= PC_select;
        data_select_reg <= data_select;
    end

    integer i;
    always @(*) begin
        data_select = `NUM_BRAMS - 1;
        PC_select   = `NUM_BRAMS - 1;
        for (i = 0; i < `NUM_BRAMS; i = i + 1) begin
            if (address < (i + 1) * `WORLDBRAMSIZE) begin
                data_select = i[$clog2(`NUM_BRAMS)-1:0];
                break;
            end
        end
        for (i = 0; i < `NUM_BRAMS; i = i + 1) begin
            if (PC < (i + 1) * `WORLDBRAMSIZE) begin
                PC_select = i[$clog2(`NUM_BRAMS)-1:0];
                break;
            end
        end
    end

    assign instr = instr_tmp[PC_select_reg];
    assign data_out = data_out_tmp[data_select_reg];

    genvar bram_idx;
    generate
        for (bram_idx = 0; bram_idx < `NUM_BRAMS; bram_idx = bram_idx + 1) begin : bram_array
            word_bram bram_inst (
                .clk(clk),
                .reset(reset),
                .ren(ren),
                .wen((data_select == bram_idx) ? wen : 0),
                .byte_select_vector(byte_select_vector),
                .PC(PC - bram_idx * `WORLDBRAMSIZE),
                .data_in(data_in),
                .address(address - bram_idx * `WORLDBRAMSIZE),
                .instr(instr_tmp[bram_idx]),
                .data_out(data_out_tmp[bram_idx])
            );
        end
    endgenerate

endmodule
