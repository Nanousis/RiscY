`ifndef TESTBENCH
//`include "constants.vh"
//`include "config.vh"

`include "../includes/constants.vh"
`include "../includes/config.vh"
`else
`include "../includes/constants.vh"
`include "../includes/config.vh"
`endif

module ALUCPU #(parameter N = 32) (output[N-1:0] out,
								output zero,
								output reg overflow,
								input signed [N-1:0] inA, inB,
								input [4:0] op);

/****** SIGNALS ******/
/****** SIGNALS ******/
reg 	[N-1:0] 	out_val;
/* verilator lint_off UNUSED */
wire 	[N:0]		unsigned_sub;
/* verilator lint_on UNUSED */

/****** LOGIC ******/
assign unsigned_sub = {({1'b0, inA} - {1'b0, inB})};

reg [8*8-1:0] debug_string;
reg [32:0] result_ext;
// Stich a zero behind operations that don't need overflow
// just to make the compiler happy :)
always @(*) begin
	case (op)
		`ADD:    begin {overflow, out_val} = inA + inB; debug_string = "ADD"; end
		`SUB:    begin
			// result_ext = {1'b0, inA} - {1'b0, inB};
			out_val = inA-inB;
			overflow = (inA[N-1] != inB[N-1]) && (out_val[N-1] != inA[N-1]);
			debug_string = "SUB"; 
		end // sub, bne, beq, blt, bge
		`XOR:    begin {overflow, out_val} = {1'b0, inA ^ inB}; debug_string = "XOR"; end
		`OR:     begin {overflow, out_val} = {1'b0, inA | inB}; debug_string = "OR"; end
		`AND:    begin {overflow, out_val} = {1'b0, inA & inB}; debug_string = "AND"; end
		`CLEAR:  begin {overflow, out_val} = {1'b0, (!inA & inB)}; debug_string = "CLEAR"; end
		`SLL:    begin {overflow, out_val} = {1'b0, inA << inB[4:0]}; debug_string = "SLL"; end
		`SRL:    begin {overflow, out_val} = {1'b0, inA >> inB[4:0]}; debug_string = "SRL"; end
		`SRA:    begin {overflow, out_val} = {1'b0, inA >>> inB[4:0]}; debug_string = "SRA"; end
		`SLT:    begin {overflow, out_val} = {1'b0, (inA < inB) ? 32'b1 : 32'b0}; debug_string = "SLT"; end
		`SLTU:   begin {overflow, out_val} = {1'b0, ($unsigned(inA) < $unsigned(inB)) ? 32'b1 : 32'b0}; debug_string = "SLTU"; end
		`SUBU:   begin {overflow, out_val} = {1'b0, unsigned_sub[32:1]}; debug_string = "SUBU"; end // bltu, bgeu
		`LUI:    begin {overflow, out_val} = {1'b0, inB[31:12], 12'b0}; debug_string = "LUI"; end
		`AUIPC:  begin {overflow, out_val} = inA + {inB[31:12], 12'b0}; debug_string = "AUIPC"; end
		`PASS:    begin {overflow, out_val} = inA; debug_string = "PASS"; end
		`MUL:    begin {overflow, out_val} = inA * inB; debug_string = "MUL"; end
		// `DIVU:    begin {overflow, out_val} = inA / inB; debug_string = "DIVU"; end
		default: begin {overflow, out_val} = 33'b0; debug_string = "DEFAULT"; end
	endcase
end

assign zero = (out == 0);
assign out 	= {{(N-32){out_val[31]}}, out_val[31:0]};

endmodule