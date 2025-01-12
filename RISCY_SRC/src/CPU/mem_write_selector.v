`ifndef TESTBENCH
`include "constants.vh"
`include "config.vh"
`else
`include "../includes/constants.vh"
`include "../includes/config.vh"
`endif


module mem_write_selector(	input [2:0] mem_select,
							input [31:0] ALUin,
							input [1:0] offset,
							output reg [3:0] byte_select_vector,
							output reg [31:0] out);

always @(*)
begin
	case (mem_select)
		`FUNCT3_SB  : byte_select_vector = 4'b0001 << offset; 
		`FUNCT3_SH  : byte_select_vector = (offset[1] == 1'b1) ? 4'b1100 : 4'b0011;
		default: byte_select_vector = 4'b1111;
	endcase
end

always @(*)
begin
	if (mem_select == `FUNCT3_SB)
		case (offset)
			2'b00: out = ALUin;
			2'b01: out = ALUin << 8;
			2'b10: out = ALUin << 16;
			2'b11: out = ALUin << 24;
		endcase
	else if (mem_select == `FUNCT3_SH)
		case (offset)
			2'b00:		out = ALUin;
			2'b10:		out = ALUin << 16;
			default:	out = 32'b0;
		endcase
	else
		out = ALUin;
end

endmodule