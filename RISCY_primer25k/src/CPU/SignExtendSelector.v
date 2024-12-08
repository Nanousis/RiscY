`ifndef TESTBENCH
`include "constants.vh"
`include "config.vh"
`else
`include "../includes/constants.vh"
`include "../includes/config.vh"
`endif


module SignExtendSelector(	output reg [31:0] out,
							input [31:0] imm_i,
							input [31:0] imm_s,
							input [31:0] imm_b,
							input [31:0] imm_u,
							input [31:0] imm_j,
							input [31:0] imm_z,
							input [6:0] opcode);
always @(*)
begin
	case (opcode)
		`I_COMP_FORMAT:	out = imm_i;
		`I_LOAD_FORMAT:	out = imm_i;
		`I_JALR_FORMAT:	out = imm_i;
		`I_ENV_FORMAT:  out = imm_z;
		`S_FORMAT:		out = imm_s;
		`B_FORMAT:		out = imm_b;
		`J_FORMAT:		out = imm_j;
		`U_FORMAT_AUIPC,
		`U_FORMAT_LUI:	out = imm_u;
		default:		out = 32'b0;
	endcase
end
endmodule