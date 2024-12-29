`ifndef TESTBENCH
`include "constants.vh"
`include "config.vh"
`else
`include "../includes/constants.vh"
`include "../includes/config.vh"
`endif


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
reg 	[31:0]  PC_IF2;
reg		[31:0]	PC, PC_OLD, IFID_PC, IDEX_PC;
wire	[31:0]	PCplus4, JumpAddress, PC_new;
wire	[31:0]	instr;
reg		[31:0]	IF2_instr;
reg	[31:0]	IDEX_instr;
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
reg 	[1:0] 	IDEX_reg_type;
reg		[2:0]	IDEX_ALUcntrl;
reg				IDEX_MemRead, IDEX_MemWrite;
reg				IDEX_MemToReg, IDEX_RegWrite;
reg 	[2:0]	EXMEM_funct3, MEMWB_funct3;
reg 	[4:0]	EXMEM_RegWriteAddr;
reg 	[31:0]	EXMEM_ALUOut;
reg 	[31:0]	EXMEM_BranchALUOut;
reg 	[1:0] 	EXMEM_reg_type;
reg				EXMEM_Zero, EXMEM_JumpJALR;
wire		[3:0]	byte_select_vector;
reg		[31:0]	EXMEM_MemWriteData;
wire	[31:0]	MemWriteData;
reg				EXMEM_MemRead, EXMEM_MemWrite, EXMEM_RegWrite, EXMEM_MemToReg;
reg		[31:0]	MEMWB_DMemOut;
reg		[4:0]	MEMWB_RegWriteAddr;
reg		[31:0]	MEMWB_ALUOut;
reg				MEMWB_MemToReg, MEMWB_RegWrite;
reg 	[1:0] 	MEMWB_reg_type;
// alu signals
reg 	[31:0] 	ALUInA, ALUInB;
wire 	[31:0] 	bypassOutA, bypassOutB;
wire	[31:0]	ALUOut, BranchALUOut, DMemOut, MemOut;
reg     [31:0]  wRegData;
reg     [31:0]  WB_csr_data;
wire			Zero, RegDst, MemRead, MemWrite, MemToReg, ALUSrc, PCSrc, RegWrite, Jump, JumpJALR;
wire 	[1:0] 	reg_type; // used to determin if we are using the x0-x31 registers, csr registers or f1-f32 registers. 0->x register 1->csr register 2->f register 
wire			Branch;
reg				IDEX_Branch, EXMEM_Branch;
wire			bubble_ifid, bubble_idex, bubble_exmem;   // create a NOP in respective stages
wire			write_ifid, write_idex, write_exmem, write_memwb, write_pc;  // enable/disable pipeline registers
wire	[6:0]	opcode;
wire	[2:0]	funct3, ALUcntrl; 
// csr registers

// csr file output
wire 	[31:0] 	csr_data;
reg 	[31:0] 	EXMEM_csr_data;
reg 	[31:0] 	MEMWB_csr_data;
// csr write address
wire 	[11:0]	csr_addr;
reg 	[11:0]	IDEX_csr_addr;
reg 	[11:0]	EXMEM_csr_addr;
reg 	[11:0]	MEMWB_csr_addr;

reg 			csr_write_allowed;
reg 			IDEX_csr_write_allowed;
reg 			EXMEM_csr_write_allowed;
reg 			MEMWB_csr_write_allowed;

wire       		csr_immidiate;
reg      		IDEX_csr_immidiate;
reg      		EXMEM_csr_immidiate;
reg      		MEMWB_csr_immidiate;

wire	[6:0]	funct7;
wire	[4:0]	instr_rs1, instr_rs2, instr_rd, RegWriteAddr;
wire	[3:0]	ALUOp;
wire	[1:0]	bypassA, bypassB;
wire	[31:0]	imm_i, imm_s, imm_b, imm_u, imm_j, imm_z;
reg keepDelayInstr=0;


assign PC_out = PC;
assign instr = instr_in;
assign data_addr = (ren==1'b1)?ALUOut:EXMEM_ALUOut;
assign ren = IDEX_MemRead;
assign wen = EXMEM_MemWrite;
assign data_out = MemWriteData;
assign DMemOut = data_in;
assign byte_select = byte_select_vector;
/********************** Instruction Fetch Unit (IF1)  **********************/
always @(posedge clock or negedge reset)
begin 
	if (reset == 1'b0)
	begin
		PC <= `INITIAL_PC; 
	end
	else if (write_pc == 1'b1)
	begin
		PC <= PC_new;
	end
	else
	begin
		// PC <= PC_IF2;
	end
end

reg write_pc_delayed;
reg bubble_ifid_delayed;
/***************************** Instruction Fetch Unit (IF2)  *******************/
// This stage is used to control the instruction output of the IF stages

// fix 1 for IF2 stages
// Keep delay instruction is used when we have a stall
// When we have a stall the PC continues for one cycle
// but the instruction is not passed to the next stage, hence we keep it
// on delayed_instr until the stall is resolved

// fix 2 for IF2 stages
// since we now have two stages in the IF,
// we need to bubble the IFID register for two cycles when jumping/branching
always @(posedge clock or negedge reset)
begin
	if(reset == 1'b0)begin
		PC_IF2 <= 32'b0;
		write_pc_delayed <= 1'b0;
		bubble_ifid_delayed <= 1'b0;
	end
	else begin
		write_pc_delayed <= write_pc;
		if(write_ifid == 1'b1)begin
			bubble_ifid_delayed <= bubble_ifid;
			delayed_instr <= 0;
			PC_IF2 <= PC;
			keepDelayInstr <= 0;
		end
		else begin
			if(keepDelayInstr ==1'b0)
			begin
			keepDelayInstr <= 1;
			delayed_instr <= instr;
			end
		end
	end
end


// if a cache is to be put here, this needs to be modified.
// also make sure that the cache only handles specific addresses
always@(*)
begin
	if(delayed_instr == 0) begin
		IF2_instr = instr;
	end
	else begin
		if(bubble_ifid_delayed == 1'b1) begin
			IF2_instr = 32'b0;
		end
		else begin
			IF2_instr = delayed_instr;
		end
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

// IFID pipeline register
always @(posedge clock or negedge reset)
begin 
	if((reset == 1'b0))
	begin
		IFID_PC			<= 32'b0;
		IFID_instr		<= 32'b0;
	end
	else begin
		// used to hold bubble in the pipeline. You loose an extra cycle here
		// This is so that the instruction memory can notice the jump
		if ((bubble_ifid_delayed||bubble_ifid == 1'b1)) begin
			IFID_PC			<= 32'b0;
			IFID_instr		<= 32'b0;
		end 
		else if (write_ifid == 1'b1) begin
			IFID_PC			<= PC_IF2;
			IFID_instr		<= IF2_instr;
		end
	end
end

/***************************** Instruction Decode Unit (ID)  *******************/
assign opcode		= IFID_instr[6:0];
// funct 3 is also used for csr operations
assign funct3		= IFID_instr[14:12];
assign funct7		= IFID_instr[31:25];
assign instr_rs1	= IFID_instr[19:15];
assign csr_addr		= IFID_instr[31:20];
assign instr_rs2	= IFID_instr[24:20];
assign instr_rd		= IFID_instr[11:7];



always @(*) begin
	if(reg_type == 2'b01) begin
		if(funct3[1:0] == 2'b01) begin
			csr_write_allowed = 1'b1;
		end
		else begin
			if(instr_rs1 == 32'b0) begin
				csr_write_allowed = 1'b0;
			end
			else begin
				csr_write_allowed = 1'b1;
			end
		end
	end
	else begin
		csr_write_allowed = 1'b0;
	end
end
//Sign Extension Unit
signExtend signExtendUnit (
	.instr(IFID_instr[31:7]),
	.imm_i(imm_i),
	.imm_s(imm_s),
	.imm_b(imm_b),
	.imm_u(imm_u),
	.imm_j(imm_j),
	.imm_z(imm_z)
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
	.imm_z(imm_z),
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
		IDEX_reg_type	<= 3'b0;
		IDEX_instr		<= 32'b0;
		IDEX_csr_addr	<= 12'b0;
		IDEX_csr_write_allowed <= 1'b0;
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
			IDEX_reg_type	<= 3'b0;
			IDEX_instr		<= 32'b0;
			IDEX_csr_addr	<= 12'b0;
			IDEX_csr_write_allowed <= 1'b0;
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
			IDEX_reg_type	<= reg_type;
			IDEX_instr		<= IFID_instr;
			IDEX_csr_addr	<= csr_addr;
			IDEX_csr_write_allowed <= csr_write_allowed;
		end
	end
end
CSRFile csrFile(
	.clock(clock),
	.reset(reset),
	.wen(MEMWB_csr_write_allowed),
	.ren(reg_type==2'b01),
	.csrAddr(csr_addr),
	.csrWAddr(MEMWB_csr_addr),
	.wd(WB_csr_data),
	.rd(csr_data)
);
// Main Control Unit

// this should probably take into account loading a register
// and then writing that register into a csr
control_main control_main (
	.RegDst(RegDst),
	.reg_type(reg_type),
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


// ALU input A
always @(*) begin
    if (IDEX_inA_is_PC == 1'b1) begin
        ALUInA = IDEX_PC;
    end else begin
        ALUInA = bypassOutA;
    end
end
// ALU input B
always @(*) begin
    if (IDEX_Jump == 1'b1 || IDEX_JumpJALR == 1'b1) begin
        ALUInB = 32'd4;
    end else if (IDEX_ALUSrc == 1'b0) begin
        ALUInB = bypassOutB;
    end else begin
        ALUInB = IDEX_signExtend;
    end
end

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
		EXMEM_csr_data		<= 32'b0;
		EXMEM_reg_type		<= 2'b00;
		EXMEM_csr_addr		<= 12'b0;
		EXMEM_csr_write_allowed <= 1'b0;
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
			EXMEM_csr_data		<= 32'b0;
			EXMEM_reg_type		<= 2'b00;
			EXMEM_csr_addr		<= 12'b0;
			EXMEM_csr_write_allowed <= 1'b0;
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
			EXMEM_csr_data		<= csr_data;
			EXMEM_reg_type		<= IDEX_reg_type;
			EXMEM_csr_addr		<= IDEX_csr_addr;
			EXMEM_csr_write_allowed <= IDEX_csr_write_allowed;
		end
	end
end

control_alu control_alu(
	.ALUOp(ALUOp), 
	.ALUcntrl(IDEX_ALUcntrl), 
	.csr_immidiate(csr_immidiate),
	.funct3(IDEX_funct3), 
	.funct7(IDEX_funct7)
);

// Bypass control
control_bypass_ex control_bypass_ex(
	.bypassOutA(bypassOutA),
	.bypassOutB(bypassOutB),
	.idex_rs1(IDEX_instr_rs1), 
	.idex_rs2(IDEX_instr_rs2),
	.idex_rd(IDEX_instr_rd),
	.idex_reg_type(IDEX_reg_type),
	.exmem_reg_type(EXMEM_reg_type),
	.memwb_reg_type(MEMWB_reg_type),
	.idex_rdA(IDEX_rdA),
	.idex_rdB(IDEX_rdB),
	.wRegData(wRegData),
	.EXMEM_ALUOut(EXMEM_ALUOut),
	.idex_csr_addr(IDEX_csr_addr),
	.exmem_csr_addr(EXMEM_csr_addr),
	.memwb_csr_addr(MEMWB_csr_addr),
	.csr_data(csr_data),
	.WB_csr_data(WB_csr_data),
	.csr_immidiate(csr_immidiate),
	.exmem_csr_write_allowed(EXMEM_csr_write_allowed),
	.memwb_csr_write_allowed(MEMWB_csr_write_allowed),
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
		MEMWB_csr_data		<= 32'b0;
		MEMWB_reg_type		<= 2'b00;
		MEMWB_csr_addr		<= 12'b0;
		MEMWB_csr_write_allowed <= 1'b0;
	end 
	else if (write_memwb == 1'b1) begin
		MEMWB_DMemOut		<= DMemOut;
		MEMWB_ALUOut		<= EXMEM_ALUOut;
		MEMWB_RegWriteAddr	<= EXMEM_RegWriteAddr;
		MEMWB_MemToReg		<= EXMEM_MemToReg;
		MEMWB_RegWrite		<= EXMEM_RegWrite;
		MEMWB_funct3		<= EXMEM_funct3;
		MEMWB_csr_data		<= EXMEM_csr_data;
		MEMWB_reg_type		<= EXMEM_reg_type;
		MEMWB_csr_addr		<= EXMEM_csr_addr;
		MEMWB_csr_write_allowed <= EXMEM_csr_write_allowed;
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
always @(*) begin
	if (MEMWB_reg_type == 0) begin
		if (MEMWB_MemToReg == 1'b0) begin
			wRegData = MEMWB_ALUOut;
		end else begin
			wRegData = MemOut;
		end
	end else begin
		wRegData = MEMWB_csr_data;
	end
end
always @(*)
begin 
	if (write_memwb == 1'b1) begin
		WB_csr_data <= MEMWB_ALUOut;
	end
	else
	begin
		WB_csr_data <= 0;
	end
end

endmodule
