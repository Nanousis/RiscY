`ifndef TESTBENCH
`include "constants.vh"
`include "config.vh"
`else
`include "../includes/constants.vh"
`include "../includes/config.vh"
`endif

module ALUCPU #(parameter N = 32) (output [N-1:0] out,
								output zero,
								output overflow,
								input signed [N-1:0] inA, inB,
								input [3:0] op);

/****** SIGNALS ******/
/****** SIGNALS ******/
wire 	[N-1:0] 	out_val;
/* verilator lint_off UNUSED */
wire 	[N:0]		unsigned_sub;
/* verilator lint_on UNUSED */

/****** LOGIC ******/
assign unsigned_sub = {({1'b0, inA} - {1'b0, inB})};

// Stich a zero behind operations that don't need overflow
// just to make the compiler happy :)
assign {overflow, out_val} = (op == `ADD) ? (inA + inB) : 
	(op == `SUB) 	? 	(inA - inB) : // sub, bne, beq, blt, bge
	(op == `XOR) 	? 	{1'b0, (inA ^ inB)} :
	(op == `OR)  	? 	{1'b0, (inA | inB)} :
	(op == `AND) 	? 	{1'b0, (inA & inB)} :
	(op == `CLEAR) 	? 	{1'b0, ((!inA) & inB)} :
	(op == `SLL) 	? 	{1'b0, (inA << inB[4:0])} :
	(op == `SRL) 	? 	{1'b0, (inA >> inB[4:0])} :
	(op == `SRA) 	? 	{1'b0, {inA >>> inB[4:0]}} :
	(op == `SLT) 	? 	{1'b0, ( (inA < inB) ? 32'b1 : 32'b0 )} :
	(op == `SLTU)	? 	{1'b0, ( ($unsigned(inA) < $unsigned(inB)) ? 32'b1 : 32'b0)} :
	(op == `SUBU)  	? 	{1'b0, unsigned_sub[32:1]} : // bltu, bgeu
	(op == `LUI)   	? 	{1'b0, inB[31:12], 12'b0}:
	(op == `AUIPC) 	? 	(inA + {inB[31:12], 12'b0}) : 33'b0;

assign zero = (out == 0);
assign out 	= {{(N-32){out_val[31]}}, out_val[31:0]};

endmodule