`ifndef TESTBENCH
`include "constants.vh"
`include "config.vh"
`else
`include "../includes/constants.vh"
`include "../includes/config.vh"
`endif

/************** control for ALU control in EX pipe stage  *************/
module control_alu(	output reg [4:0] ALUOp,
					output reg csr_immidiate,
					input [2:0] ALUcntrl,
					input [2:0] funct3,
					input [6:0] funct7);

reg [8*8-1:0] debug_string;

always @(ALUcntrl or funct3 or funct7)
begin
	csr_immidiate = 0;
	debug_string = "DEFAULT";
	case (ALUcntrl)
		`ALU_R: begin
			case (funct3)
				`FUNCT3_ADD_SUB:
				begin
					case (funct7)
						`FUNCT7_ADD:	ALUOp = `ADD;
						`FUNCT7_SUB:	ALUOp = `SUB;
						`FUNCT7_MUL:	ALUOp = `MUL; // Assuming MUL is defined in constants.vh
						default:		ALUOp = `ADD; // Default to ADD if funct7 is not recognized
					endcase
				end
				`FUNCT3_XOR:		ALUOp = `XOR;
				`FUNCT3_OR:			ALUOp = `OR;
				`FUNCT3_AND:		ALUOp = `AND;
				`FUNCT3_SLL:		ALUOp = `SLL;
				`FUNCT3_SRL:begin
					if(funct7 == `FUNCT7_SRL)
						ALUOp = `SRL;
					// The same funct7 is used for mul and div
					// else if(funct7 == `FUNCT7_MUL)
					// begin
					// 	ALUOp = `DIVU;
					// end
					else begin
						ALUOp = (funct7 == `FUNCT7_SRL) ? `SRL : `SRA;
					end
				end
				`FUNCT3_SLT:		ALUOp = `SLT;
				`FUNCT3_SLTU:		ALUOp = `SLTU;
				default:			ALUOp = `ADD;
			endcase
		end
		`ALU_LOAD_STORE: begin
			ALUOp  = `ADD;
		end
		`ALU_BRANCH: begin
			case (funct3)
				`FUNCT3_BEQ, `FUNCT3_BNE, `FUNCT3_BLT, `FUNCT3_BGE:	ALUOp = `SUB;
				`FUNCT3_BLTU, `FUNCT3_BGEU:							ALUOp = `SUBU;
				default:											ALUOp = `SUB;
			endcase
		end
		`ALU_LUI: begin
			ALUOp = `LUI;
		end
		`ALU_AUIPC: begin
			ALUOp = `AUIPC;
		end
		`ALU_I_COMP: begin
			case (funct3)
				`FUNCT3_ADDI:	ALUOp = `ADD;
				`FUNCT3_XORI:	ALUOp = `XOR;
				`FUNCT3_ORI:	ALUOp = `OR;
				`FUNCT3_ANDI:	ALUOp = `AND;
				`FUNCT3_SLLI:	ALUOp = `SLL;
				`FUNCT3_SRLI:	ALUOp = (funct7 == `FUNCT7_SRL) ? `SRL : `SRA;
				`FUNCT3_SLTI:	ALUOp = `SLT;
				`FUNCT3_SLTIU:	ALUOp = `SLTU;
				default:		ALUOp = `ADD;
			endcase
		end
		`ALU_J: begin
			ALUOp = `ADD;
		end
		`ALU_CSR:begin
			case (funct3)
				`FUNCT3_CSRRW:
				begin
					debug_string = "CSRRW";
					csr_immidiate = 0;
					ALUOp = `PASS;
				end
				`FUNCT3_CSRRS:
				begin
					debug_string = "CSRRS";
					csr_immidiate = 0;
					ALUOp = `OR;
				end
				`FUNCT3_CSRRC:
				begin
					debug_string = "CSRRC";
					csr_immidiate = 0;
					ALUOp = `CLEAR;
				end
				`FUNCT3_CSRRWI:
				begin
					debug_string = "CSRRWI";
					csr_immidiate = 1;
					ALUOp = `PASS;
				end
				`FUNCT3_CSRRSI:
				begin
					debug_string = "CSRRSI";
					csr_immidiate = 1;
					ALUOp = `OR;
				end
				`FUNCT3_CSRRCI:
				begin
					debug_string = "CSRRCI";
					csr_immidiate = 1;
					ALUOp = `CLEAR;
				end
				default:
				begin
					debug_string = "DEFAULT";
					csr_immidiate = 0;
					ALUOp = `PASS;
				end
			endcase
		end
		default: begin
			ALUOp = `ADD;
		end
	endcase
end
endmodule