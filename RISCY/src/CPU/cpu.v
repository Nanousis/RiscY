`include "constants.vh"
`include "config.vh"

/*****************************************************************************************/
/* Implementation of the 5-stage MIPS pipeline that supports the following instructions: */
/*  R-format: add, sub, and, or, xor, slt                                                */
/*  addi, lw, sw, beq, j                                                                 */
/*****************************************************************************************/
module cpu(	input clock,
			input reset,
			output overflow,
			output 	[31:0] PC_out,
			input  	[31:0] instr_in,
			output 	[31:0] data_addr,
			output ren,
			output wen,
			output 	[31:0] data_out,
			input 	[31:0] data_in,
			output 	[3:0]  byte_select,
			input memReady
			);


// // Data memory 1KB
// Dmem cpu_DMem(
// 	.clock(clock), 
// 	.reset(reset),
// 	.ren(EXMEM_MemRead), 
// 	.wen(EXMEM_MemWrite), 
// 	.byte_select_vector(byte_select_vector), 
// 	.addr(EXMEM_ALUOut[`DATA_BITS-1:2]), 
// 	.din(MemWriteData), 
// 	.dout(DMemOut)
// );
reg		[31:0]	IFID_instr;
reg		[31:0]	PC, PC_OLD, IFID_PC, IDEX_PC;
wire	[31:0]	PCplus4, JumpAddress, PC_new;
wire	[31:0]	instr;
reg     [31:0]  delayed_instr;
wire			inA_is_PC, branch_taken;
wire	[31:0]	BranchInA;
reg		[31:0]	IDEX_signExtend;
wire	[31:0]	signExtend;
wire	[31:0]	rdA, rdB;
reg		[31:0]	IDEX_rdA, IDEX_rdB;
reg		[2:0]	IDEX_funct3;
reg		[6:0]	IDEX_funct7;
reg		[4:0]	IDEX_instr_rs2, IDEX_instr_rs1, IDEX_instr_rd;
reg				IDEX_RegDst, IDEX_ALUSrc, IDEX_inA_is_PC, IDEX_Jump, IDEX_JumpJALR;
reg		[2:0]	IDEX_ALUcntrl;
reg				IDEX_MemRead, IDEX_MemWrite;
reg				IDEX_MemToReg, IDEX_RegWrite;
reg 	[2:0]	EXMEM_funct3, MEMWB_funct3;
reg 	[4:0]	EXMEM_RegWriteAddr;
reg 	[31:0]	EXMEM_ALUOut;
reg 	[31:0]	EXMEM_BranchALUOut;
reg				EXMEM_Zero, EXMEM_JumpJALR;
wire		[3:0]	byte_select_vector;
reg		[31:0]	EXMEM_MemWriteData;
wire	[31:0]	MemWriteData;
reg				EXMEM_MemRead, EXMEM_MemWrite, EXMEM_RegWrite, EXMEM_MemToReg;
reg		[31:0]	MEMWB_DMemOut;
reg		[4:0]	MEMWB_RegWriteAddr;
reg		[31:0]	MEMWB_ALUOut;
reg				MEMWB_MemToReg, MEMWB_RegWrite;
wire	[31:0]	ALUInA, ALUInB, ALUOut, BranchALUOut, bypassOutA, bypassOutB, DMemOut, MemOut, wRegData;
wire			Zero, RegDst, MemRead, MemWrite, MemToReg, ALUSrc, PCSrc, RegWrite, Jump, JumpJALR;
wire			Branch;
reg				IDEX_Branch, EXMEM_Branch;
wire			bubble_ifid, bubble_idex, bubble_exmem;   // create a NOP in respective stages
wire			write_ifid, write_idex, write_exmem, write_memwb, write_pc;  // enable/disable pipeline registers
wire	[6:0]	opcode;
wire	[2:0]	funct3, ALUcntrl; 
wire	[6:0]	funct7;
wire	[4:0]	instr_rs1, instr_rs2, instr_rd, RegWriteAddr;
wire	[3:0]	ALUOp;
wire	[1:0]	bypassA, bypassB;
wire	[31:0]	imm_i, imm_s, imm_b, imm_u, imm_j;
reg keepDelayInstr=0;


assign PC_out = PC;
assign instr = instr_in;
assign data_addr = (ren==1'b1)?ALUOut:EXMEM_ALUOut;
assign ren = IDEX_MemRead;
assign wen = EXMEM_MemWrite;
assign data_out = MemWriteData;
assign DMemOut = data_in;
assign byte_select = byte_select_vector;
/********************** Instruction Fetch Unit (IF)  **********************/
always @(posedge clock or negedge reset)
begin 
	if (reset == 1'b0)
	begin
		PC <= `INITIAL_PC; 
		PC_OLD <= PC;    
		keepDelayInstr <= 0;
	end
	else if (write_pc == 1'b1)
	begin
		keepDelayInstr <= 0;
		PC <= PC_new;
		PC_OLD <= PC;
		delayed_instr <= 32'b0;
	end
	else
	begin
		if(keepDelayInstr == 1'b0)
		begin
			delayed_instr <=instr;
		end
		keepDelayInstr <= 1'b1;
		PC <= PC;
	end
end
reg [31:0] PCPrevious;
// PC adder
assign PCplus4 = PC + 32'd4;

// PCSrc multiplexer (branch or not)
assign PC_new = (PCSrc == 1'b0) ? 
				((Jump == 1'b0) ? PCplus4 : JumpAddress) :
				EXMEM_BranchALUOut;

assign JumpAddress = IFID_PC + signExtend;

// This means that the instruction memory is not ready to provide an instruction
// This should be set to 0 whenever the program counter changes to a different location
reg IFID_instrColdStart=1'b0; 

// IFID pipeline register
always @(posedge clock or negedge reset)
begin 
	if((reset == 1'b0))
	begin
		IFID_PC			<= 32'b0;
		IFID_instr		<= 32'b0;
		IFID_instrColdStart	<= 1'b0;	
	end
	else begin
		// used to hold bubble in the pipeline. You loose an extra cycle here
		// This is so that the instruction memory can notice the jump
		if ((bubble_ifid == 1'b1)) begin
			IFID_instrColdStart <= 1'b0;
			IFID_PC			<= 32'b0;
			IFID_instr		<= 32'b0;
		end 
		else if (write_ifid == 1'b1) begin
			if(IFID_instrColdStart == 1'b0)
			begin
				IFID_PC			<= 32'b0;
				IFID_instr		<= 32'b0;
				IFID_instrColdStart <= 1'b1;
			end
			else
			begin
				IFID_PC			<= PC_OLD;
				if(delayed_instr != 32'b0)
				begin
					IFID_instr		<= delayed_instr;
				end
				else
				begin
					IFID_instr		<= instr;
				end
			end
		end
	end
end

// Instruction memory
// Imem cpu_IMem(
// 	.reset(reset),
// 	.ren(write_ifid),
// 	.addr(PC[`TEXT_BITS-1:2]),
// 	.dout(instr)
// );

/***************************** Instruction Decode Unit (ID)  *******************/
assign opcode		= IFID_instr[6:0];
assign funct3		= IFID_instr[14:12];
assign funct7		= IFID_instr[31:25];
assign instr_rs1	= IFID_instr[19:15];
assign instr_rs2	= IFID_instr[24:20];
assign instr_rd		= IFID_instr[11:7];

//Sign Extension Unit
signExtend signExtendUnit (
	.instr(IFID_instr[31:7]),
	.imm_i(imm_i),
	.imm_s(imm_s),
	.imm_b(imm_b),
	.imm_u(imm_u),
	.imm_j(imm_j)
);

// Register file
RegFile cpu_regs (
	.clock(clock),
	.reset(reset),
	.raA(instr_rs1),
	.raB(instr_rs2),
	.wa(MEMWB_RegWriteAddr),
	.wen(MEMWB_RegWrite),
	.wd(wRegData),
	.rdA(rdA),
	.rdB(rdB)
);

// Sign Extended Signal Selection
SignExtendSelector SignExtendSelector (
	.out(signExtend),
	.imm_i(imm_i),
	.imm_s(imm_s),
	.imm_b(imm_b),
	.imm_u(imm_u),
	.imm_j(imm_j),
	.opcode(opcode)
);


// IDEX pipeline register
always @(posedge clock or negedge reset)
begin 
	if ((reset == 1'b0)) begin
		IDEX_inA_is_PC	<= 1'b0;
		IDEX_Jump		<= 1'b0;
		IDEX_JumpJALR	<= 1'b0;
		IDEX_signExtend	<= 32'b0;
		IDEX_instr_rd	<= 5'b0;
		IDEX_instr_rs1	<= 5'b0;
		IDEX_instr_rs2	<= 5'b0;
		IDEX_RegDst		<= 1'b0;
		IDEX_ALUcntrl	<= 3'b0;
		IDEX_ALUSrc		<= 1'b0;
		IDEX_Branch		<= 1'b0;
		IDEX_MemRead	<= 1'b0;
		IDEX_MemWrite	<= 1'b0;
		IDEX_MemToReg	<= 1'b0;
		IDEX_RegWrite	<= 1'b0;
		IDEX_funct3		<= 3'b0;
		IDEX_funct7		<= 7'b0;
		IDEX_PC			<= 32'b0;
		IDEX_rdA		<= 32'b0;
		IDEX_rdB		<= 32'b0;
	end
	else
	begin
		if ((bubble_idex == 1'b1)) begin
			IDEX_inA_is_PC	<= 1'b0;
			IDEX_Jump		<= 1'b0;
			IDEX_JumpJALR	<= 1'b0;
			IDEX_signExtend	<= 32'b0;
			IDEX_instr_rd	<= 5'b0;
			IDEX_instr_rs1	<= 5'b0;
			IDEX_instr_rs2	<= 5'b0;
			IDEX_RegDst		<= 1'b0;
			IDEX_ALUcntrl	<= 3'b0;
			IDEX_ALUSrc		<= 1'b0;
			IDEX_Branch		<= 1'b0;
			IDEX_MemRead	<= 1'b0;
			IDEX_MemWrite	<= 1'b0;
			IDEX_MemToReg	<= 1'b0;
			IDEX_RegWrite	<= 1'b0;
			IDEX_funct3		<= 3'b0;
			IDEX_funct7		<= 7'b0;
			IDEX_PC			<= 32'b0;
			IDEX_rdA		<= 32'b0;
			IDEX_rdB		<= 32'b0;
		end
		else if (write_idex == 1'b1) begin
			IDEX_inA_is_PC	<= inA_is_PC;
			IDEX_Jump		<= Jump;
			IDEX_JumpJALR	<= JumpJALR;
			IDEX_signExtend	<= signExtend;
			IDEX_instr_rd	<= instr_rd;
			IDEX_instr_rs1	<= instr_rs1;
			IDEX_instr_rs2	<= instr_rs2;
			IDEX_RegDst		<= RegDst;
			IDEX_ALUcntrl	<= ALUcntrl;
			IDEX_ALUSrc		<= ALUSrc;
			IDEX_Branch		<= Branch;
			IDEX_MemRead	<= MemRead;
			IDEX_MemWrite	<= MemWrite;
			IDEX_MemToReg	<= MemToReg;
			IDEX_RegWrite	<= RegWrite;
			IDEX_funct3		<= funct3;
			IDEX_funct7		<= funct7;
			IDEX_PC			<= IFID_PC;
			IDEX_rdA		<= rdA;
			IDEX_rdB		<= rdB;
		end
	end
end

// Main Control Unit
control_main control_main (
	.RegDst(RegDst),
	.Branch(Branch),
	.MemRead(MemRead),
	.MemWrite(MemWrite),
	.MemToReg(MemToReg),
	.ALUSrc(ALUSrc),
	.RegWrite(RegWrite),
	.Jump(Jump),
	.JumpJALR(JumpJALR),
	.inA_is_PC(inA_is_PC),
	.ALUcntrl(ALUcntrl),
	.opcode(opcode)
);

// Control Unit that generates stalls and bubbles to pipeline stages
control_stall_id control_stall_id (
	.bubble_ifid	(bubble_ifid),
	.bubble_idex	(bubble_idex),
	.bubble_exmem	(bubble_exmem),
	.write_ifid		(write_ifid),
	.write_idex		(write_idex),
	.write_exmem	(write_exmem),
	.write_memwb	(write_memwb),
	.write_pc		(write_pc),
	.ifid_rs		(instr_rs1),
	.ifid_rt		(instr_rs2),
	.idex_rd		(IDEX_instr_rd),
	.memRead		(MemRead),
	.idex_memWrite	(IDEX_MemWrite),
	.idex_memread	(IDEX_MemRead),
	.Jump			(Jump),
	.memReady		(memReady),
	.PCSrc			(PCSrc));

/************************ Execution Unit (EX)  ***********************************/
assign bypassOutA = (bypassA==2'b00) ? IDEX_rdA :
					(bypassA==2'b01) ? wRegData :
										EXMEM_ALUOut;

assign bypassOutB = (bypassB==2'b00) ?	IDEX_rdB :
					(bypassB==2'b01) ?	wRegData :
										EXMEM_ALUOut;

assign ALUInA = (IDEX_inA_is_PC == 1'b1) ? IDEX_PC : bypassOutA;
		
assign ALUInB = (IDEX_Jump == 1'b1 || IDEX_JumpJALR == 1'b1) ? 	32'd4 :
				(IDEX_ALUSrc == 1'b0) ? bypassOutB :
										IDEX_signExtend;

assign BranchInA = (IDEX_JumpJALR == 1'b1) ? bypassOutA : IDEX_PC;

assign BranchALUOut = BranchInA + IDEX_signExtend;

// ALU
ALUCPU cpu_alu(.out(ALUOut),
			.zero(Zero),	
			.overflow(overflow),
			.inA(ALUInA),
			.inB(ALUInB),
			.op(ALUOp));

assign RegWriteAddr = (IDEX_RegDst==1'b0) ? IDEX_instr_rs2 : IDEX_instr_rd;

// EXMEM pipeline register
always @(posedge clock or negedge reset)
begin
	if ((reset == 1'b0)) begin
		EXMEM_ALUOut		<= 32'b0;
		EXMEM_JumpJALR 		<= 1'b0;
		EXMEM_BranchALUOut	<= 32'b0;
		EXMEM_RegWriteAddr	<= 5'b0;
		EXMEM_MemWriteData	<= 32'b0;
		EXMEM_Zero			<= 1'b0;
		EXMEM_Branch		<= 1'b0;
		EXMEM_MemRead		<= 1'b0;
		EXMEM_MemWrite		<= 1'b0;
		EXMEM_MemToReg		<= 1'b0;
		EXMEM_RegWrite		<= 1'b0;
		EXMEM_funct3		<= 3'b111;
	end 
	else
	begin
		if ((bubble_exmem == 1'b1)) begin
			EXMEM_ALUOut		<= 32'b0;
			EXMEM_JumpJALR 		<= 1'b0;
			EXMEM_BranchALUOut	<= 32'b0;
			EXMEM_RegWriteAddr	<= 5'b0;
			EXMEM_MemWriteData	<= 32'b0;
			EXMEM_Zero			<= 1'b0;
			EXMEM_Branch		<= 1'b0;
			EXMEM_MemRead		<= 1'b0;
			EXMEM_MemWrite		<= 1'b0;
			EXMEM_MemToReg		<= 1'b0;
			EXMEM_RegWrite		<= 1'b0;
			EXMEM_funct3		<= 3'b111;
		end 
		else if (write_exmem == 1'b1) begin
			EXMEM_ALUOut		<= ALUOut;
			EXMEM_JumpJALR		<= IDEX_JumpJALR;
			EXMEM_BranchALUOut	<= BranchALUOut;
			EXMEM_RegWriteAddr	<= RegWriteAddr;
			EXMEM_MemWriteData	<= bypassOutB;
			EXMEM_Zero			<= Zero;
			EXMEM_Branch		<= IDEX_Branch;
			EXMEM_MemRead		<= IDEX_MemRead;
			EXMEM_MemWrite		<= IDEX_MemWrite;
			EXMEM_MemToReg		<= IDEX_MemToReg;
			EXMEM_RegWrite		<= IDEX_RegWrite;
			EXMEM_funct3		<= IDEX_funct3;
		end
	end
end

// ALU control
control_alu control_alu(
	.ALUOp(ALUOp), 
	.ALUcntrl(IDEX_ALUcntrl), 
	.funct3(IDEX_funct3), 
	.funct7(IDEX_funct7)
);

// Bypass control
control_bypass_ex control_bypass_ex(
	.bypassA(bypassA), 
	.bypassB(bypassB),
	.idex_rs1(IDEX_instr_rs1), 
	.idex_rs2(IDEX_instr_rs2),
	.exmem_rd(EXMEM_RegWriteAddr), 
	.memwb_rd(MEMWB_RegWriteAddr),
	.exmem_regwrite(EXMEM_RegWrite), 
	.memwb_regwrite(MEMWB_RegWrite)
);


/*********************************** Memory Unit (MEM)  ********************************************/
mem_write_selector mem_write_selector(
	.mem_select(EXMEM_funct3),
	.ALUin(EXMEM_MemWriteData),
	.offset(EXMEM_ALUOut[1:0]),
	.byte_select_vector(byte_select_vector),
	.out(MemWriteData)
);

// // Data memory 1KB
// Dmem cpu_DMem(
// 	.clock(clock), 
// 	.reset(reset),
// 	.ren(EXMEM_MemRead), 
// 	.wen(EXMEM_MemWrite), 
// 	.byte_select_vector(byte_select_vector), 
// 	.addr(EXMEM_ALUOut[`DATA_BITS-1:2]), 
// 	.din(MemWriteData), 
// 	.dout(DMemOut)
// );

// MEMWB pipeline register
always @(posedge clock or negedge reset)
begin 
	if (reset == 1'b0) begin
		MEMWB_DMemOut		<= 32'b0;
		MEMWB_ALUOut		<= 32'b0;
		MEMWB_RegWriteAddr	<= 5'b0;
		MEMWB_MemToReg		<= 1'b0;
		MEMWB_RegWrite		<= 1'b0;
		MEMWB_funct3		<= 3'b111;
	end 
	else if (write_memwb == 1'b1) begin
		MEMWB_DMemOut		<= DMemOut;
		MEMWB_ALUOut		<= EXMEM_ALUOut;
		MEMWB_RegWriteAddr	<= EXMEM_RegWriteAddr;
		MEMWB_MemToReg		<= EXMEM_MemToReg;
		MEMWB_RegWrite		<= EXMEM_RegWrite;
		MEMWB_funct3		<= EXMEM_funct3;
	end
end

// Branch control unit
control_branch control_branch (
	.branch_taken(branch_taken),
	.funct3(EXMEM_funct3),
	.Branch(EXMEM_Branch),
	.zero(EXMEM_Zero),
	.sign(EXMEM_ALUOut[31])
);

assign PCSrc = (EXMEM_JumpJALR) ? 1'b1 : branch_taken;

/**************************** WriteBack Unit (WB) **************************/  
mem_read_selector mem_read_selector(
	.mem_select(MEMWB_funct3),
	.DMemOut(MEMWB_DMemOut),
	.byte_index(MEMWB_ALUOut[1:0]),
	.out(MemOut)
);

assign wRegData = (MEMWB_MemToReg == 1'b0) ? MEMWB_ALUOut : MemOut;

endmodule
