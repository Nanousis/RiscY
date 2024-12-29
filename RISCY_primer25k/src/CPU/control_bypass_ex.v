`ifndef TESTBENCH
`include "constants.vh"
`include "config.vh"
`else
`include "../includes/constants.vh"
`include "../includes/config.vh"
`endif

/***************** Control Module for Bypass Detection in EX Pipe Stage *****************/

/**
 * Module: control_bypass_ex
 * Purpose: Implements bypassing logic in the execute stage of a pipeline to avoid data hazards.
 *          Determines the correct source for the operands by forwarding data from previous stages.
 */
module control_bypass_ex(
    output reg [31:0] bypassOutA,     // Bypassed or original operand A
    output reg [31:0] bypassOutB,     // Bypassed or original operand B
    input [4:0] idex_rs1,             // Source register 1 address from ID/EX stage
    input [4:0] idex_rs2,             // Source register 2 address from ID/EX stage
    input [4:0] idex_rd,              // Destination register address from ID/EX stage
    input [1:0] idex_reg_type,        // Type of the register (general or CSR)
	input [1:0] exmem_reg_type,             // Type of the register (general or CSR)
	input [1:0] memwb_reg_type,             // Type of the register (general or CSR)
    input [31:0] idex_rdA,            // Operand A from ID/EX stage
    input [31:0] idex_rdB,            // Operand B from ID/EX stage
    input [31:0] wRegData,            // Writeback data from MEM/WB stage
    input [31:0] EXMEM_ALUOut,        // ALU output from EX/MEM stage
    input [31:0] csr_data,            // Data from CSR
    input csr_immidiate,              // CSR Value originates from Immidiate
	input exmem_csr_write_allowed,
	input memwb_csr_write_allowed,
    input [4:0] exmem_rd,             // Destination register address from EX/MEM stage
    input [4:0] memwb_rd,             // Destination register address from MEM/WB stage
    input exmem_regwrite,             // Write enable signal for EX/MEM stage
    input memwb_regwrite              // Write enable signal for MEM/WB stage
);

// Internal registers to hold bypass selection signals
reg [1:0] bypassA; // Bypass selector for Operand A
reg [1:0] bypassB; // Bypass selector for Operand B

// Determine bypassing logic for Operand A
always @(*) begin
	case(idex_reg_type)
	2'b00:begin
		if (exmem_regwrite == 1'b1 && exmem_rd != 5'b0 && exmem_rd == idex_rs1) begin
			bypassA = 2'b10; // Forward data from EX/MEM stage
		end
		else if (memwb_regwrite == 1'b1 && memwb_rd != 5'b0 && memwb_rd == idex_rs1) begin
			bypassA = 2'b01; // Forward data from MEM/WB stage
		end
		else begin
			bypassA = 2'b00; // No forwarding, use ID/EX stage value
		end
	end
	2'b01:begin
		bypassA = 2'b00; // No forwarding, use ID/EX stage value
	end
	default:begin
		bypassA = 2'b00; // No forwarding, use ID/EX stage value
	end
	endcase
end

// Determine bypassing logic for Operand B
always @(*) begin
	case(idex_reg_type)
	2'b00:begin
		if (exmem_regwrite == 1'b1 && exmem_rd != 5'b0 && exmem_rd == idex_rs2) begin
			bypassB = 2'b10; // Forward data from EX/MEM stage
		end
		else if (memwb_regwrite == 1'b1 && memwb_rd != 5'b0 && memwb_rd == idex_rs2) begin
			bypassB = 2'b01; // Forward data from MEM/WB stage
		end
		else begin
			bypassB = 2'b00; // No forwarding, use ID/EX stage value
		end
	end
	2'b01:begin
		bypassB = 2'b00; // No forwarding, use ID/EX stage value
	end
	default:begin
		bypassB = 2'b00; // No forwarding, use ID/EX stage value
	end
	endcase
end

// Select the correct source for Operand A based on bypass logic
always @(*) begin
    case (bypassA)
        2'b00: bypassOutA = (csr_immidiate) ? idex_rs1 : idex_rdA; // Use original ID/EX value or immediate CSR value
        2'b01: bypassOutA = wRegData;                             // Forward data from MEM/WB stage
        default: bypassOutA = EXMEM_ALUOut;                       // Forward data from EX/MEM stage
    endcase
end

// Select the correct source for Operand B based on bypass logic
always @(*) begin
    case (bypassB)
        2'b00: bypassOutB = (idex_reg_type == 2'b01) ? csr_data : idex_rdB; // Use original ID/EX value or CSR data
        2'b01: bypassOutB = wRegData;                                      // Forward data from MEM/WB stage
        default: bypassOutB = EXMEM_ALUOut;                                // Forward data from EX/MEM stage
    endcase
end

endmodule
