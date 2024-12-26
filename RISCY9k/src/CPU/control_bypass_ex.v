`include "constants.vh"
`include "config.vh"

/**************** control for Bypass Detection in EX pipe stage  *********/
module  control_bypass_ex(	output reg [1:0] bypassA,
							output reg [1:0] bypassB,
							input [4:0] idex_rs1,
							input [4:0] idex_rs2,
							input [4:0] exmem_rd,
							input [4:0] memwb_rd,
							input exmem_regwrite,
							input memwb_regwrite);

always @(*)
begin
	if (exmem_regwrite == 1'b1 && exmem_rd != 5'b0 && exmem_rd == idex_rs1) begin
		bypassA = 2'b10;
	end
	else if (memwb_regwrite == 1'b1 && memwb_rd != 5'b0 && memwb_rd == idex_rs1) begin
		bypassA = 2'b01;
	end
	else begin
		bypassA = 2'b00;
	end
end

always @(*)
begin
	if (exmem_regwrite == 1'b1 && exmem_rd != 5'b0 && exmem_rd == idex_rs2) begin
		bypassB = 2'b10;
	end
	else if (memwb_regwrite == 1'b1 && memwb_rd != 5'b0 && memwb_rd == idex_rs2) begin
		bypassB = 2'b01;
	end
	else begin
		bypassB = 2'b00;
	end
end

endmodule