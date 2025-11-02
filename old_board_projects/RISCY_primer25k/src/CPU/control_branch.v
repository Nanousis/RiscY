`ifndef TESTBENCH
`include "constants.vh"
`include "config.vh"
`else
`include "../includes/constants.vh"
`include "../includes/config.vh"
`endif


module control_branch(	output reg branch_taken,
						input [2:0] funct3,
						input Branch,
						input zero,
						input sign);

always @(*)
begin
	if (Branch) begin
		case (funct3)
			`FUNCT3_BEQ:	branch_taken = zero;
			`FUNCT3_BNE:	branch_taken = ~zero;
			`FUNCT3_BLT,
			`FUNCT3_BLTU:	branch_taken = sign;
			`FUNCT3_BGE,
			`FUNCT3_BGEU:	branch_taken = ~sign;
			default:		branch_taken = 1'b0;
		endcase
	end
	else begin
		branch_taken = 1'b0;
	end
end
endmodule