`ifndef TESTBENCH
`include "constants.vh"
`include "config.vh"
`else
`include "../includes/constants.vh"
`include "../includes/config.vh"
`endif


module memorySim(input clk,
            input [`TEXT_BITS-3:0] PC,
            input reset,
            output reg [31:0] instr,
            input [`DATA_BITS-3:0] data_addr,
            input ren, wen,
            input [31:0] data_in,
            output reg [31:0] data_out,
            input [3:0] byte_select_vector,
            output reg ready
);
parameter data_size=1<<18;
parameter file_location="../includes/testbenchtext.hex";

reg [31:0] data_mem[data_size-1:0];

integer i;
initial begin
     for(i=0; i<data_size; i=i+1) begin
         data_mem[i] = 32'h0;
     end
    $readmemh(file_location, data_mem);
end

localparam STATE_IDLE = 2'b00;
localparam STATE_READING = 2'b01;
localparam STATE_WRITING = 2'b10;
localparam STATE_FINISHED = 2'b11;
reg [1:0] state = 0;
reg [4:0] cnt = 0;
reg [`DATA_BITS-1:0] saved_data_addr = 0;

reg debug_reg;
always@(posedge clk)
begin 

    if(PC < data_size)
    begin
        instr <= data_mem[PC];
        debug_reg <= 0;
    end
    else begin
        debug_reg <=1;
    end
    ready <= 1;
    if(wen == 1'b1 && ren==1'b1)
        begin
            data_out <= data_in;
        end
    else if (wen == 1'b1 && ren==1'b0) begin
        if (byte_select_vector[3] == 1'b1)
            data_mem[data_addr][31:24] <= data_in[31:24];
        if (byte_select_vector[2] == 1'b1)
            data_mem[data_addr][23:16] <= data_in[23:16];
        if (byte_select_vector[1] == 1'b1)
            data_mem[data_addr][15:8] <= data_in[15:8];
        if (byte_select_vector[0] == 1'b1)
            data_mem[data_addr][7:0] <= data_in[7:0];
    end
    else if(ren == 1'b1)begin
        data_out <= data_mem[data_addr];
    end
end


endmodule