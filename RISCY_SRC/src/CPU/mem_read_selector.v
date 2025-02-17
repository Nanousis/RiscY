`ifndef TESTBENCH
`include "constants.vh"
`include "config.vh"
`else
`include "../includes/constants.vh"
`include "../includes/config.vh"
`endif


module mem_read_selector(	input [2:0] mem_select,
							input [31:0] DMemOut,
							input [1:0] byte_index,
							output reg [31:0] out);

wire [7:0] byte_sel;
wire [15:0] half;

assign byte_sel = (byte_index == 2'b00) ? DMemOut[7:0] :
				(byte_index == 2'b01) ? DMemOut[15:8] :
				(byte_index == 2'b10) ? DMemOut[23:16] : DMemOut[31:24];

assign half = (byte_index[1] == 1'b0) ? DMemOut[15:0] : DMemOut[31:16];

always @(*)
begin
	case (mem_select)
		`FUNCT3_LB:		out = {{24{byte_sel[7]}}, byte_sel};
		`FUNCT3_LH:		out = {{16{half[15]}}, half};
		`FUNCT3_LBU:	out = {{24{1'b0}}, byte_sel};
		`FUNCT3_LHU:	out = {{16{1'b0}}, half};
		default:		out = DMemOut;
	endcase
end

endmodule