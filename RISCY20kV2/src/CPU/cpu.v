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
			output [31:0] PC_IF2_out,
			input  	[31:0] instr_in,
			input instr_stall,
			output icache_write_pc,
			output 	[31:0] data_addr,
			output ren,
			output wen,
			output 	[31:0] data_out,
			input 	[31:0] data_in,
			output 	[3:0]  byte_select,
			input software_interrupt,
			input timer_interrupt,
			input external_interrupt,
			output reg [1:0]debug_error,
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
reg		[31:0]	PC, PC_OLD, IFID_PC, IDEX_PC, EXMEM_PC, MEMWB_PC;
wire	[31:0]	PCplus4, JumpAddress;
reg 	[31:0] PC_new;
wire	[31:0]	instr;
reg		[31:0]	IF2_instr;
reg	[31:0]	IDEX_instr;
reg	[31:0]	EXMEM_instr;
reg	[31:0]	MEMWB_instr;
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
wire			bubble_ifid, bubble_idex, bubble_exmem, bubble_memwb;   // create a NOP in respective stages
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
wire	[4:0]	ALUOp;
wire	[1:0]	bypassA, bypassB;
wire	[31:0]	imm_i, imm_s, imm_b, imm_u, imm_j, imm_z;
reg keepDelayInstr=0;

// trap handler signals
wire int_taken;
wire [31:0] trap_vector;
wire syscall, trap_waiting;
wire trap_in_ID;
// reg trap_in_EX=0;
// reg trap_in_MEM=0;


assign PC_out = PC;
assign PC_IF2_out = PC_IF2;
assign instr = instr_in;
assign data_addr = (ren==1'b1)?ALUOut:EXMEM_ALUOut;
assign ren = IDEX_MemRead&(~branch_taken);
assign wen = EXMEM_MemWrite;
assign data_out = MemWriteData;
assign DMemOut = data_in;
assign byte_select = byte_select_vector;
assign icache_write_pc = write_pc;

reg [20*8-1:0] debug_str="";
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
		debug_error <= 2'b0;
	end
	else begin
		if(PC[0]||PC[1])begin
			debug_error<=2'b1;
		end
		write_pc_delayed <= write_pc;
		if(write_ifid == 1'b1)begin
			if(bubble_ifid == 1'b1)begin
				PC_IF2 <= 32'hffffffff;
			end
			else begin
				PC_IF2 <= PC;
			end
			bubble_ifid_delayed <= bubble_ifid;
			delayed_instr <= 0;
			keepDelayInstr <= 0;
		end
		else begin
			if(bubble_ifid == 1'b1||bubble_ifid_delayed == 1'b1)begin
				PC_IF2 <= 32'hffffffff;
			end
			if(keepDelayInstr ==1'b0 & instr_stall == 0)
			begin
				keepDelayInstr <= 1;
				delayed_instr <= (PCSrc)?32'hffffffff: instr;
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
		if(bubble_ifid_delayed == 1'b1||bubble_ifid==1'b1) begin
			IF2_instr = 32'b0;
			debug_str = "BUBLE!!";
		end
		else begin
			IF2_instr = delayed_instr;
			debug_str = "Normal";
		end
	end

end

reg [31:0] PCPrevious;
// PC adder
// assign PCplus4 = PC + 32'd4;

// Branch signal for new PC
always @(*) begin
	if(int_taken||trap_in_ID)
	begin
		PC_new = trap_vector;
	end
	else if (PCSrc == 1'b0) begin
		if (Jump == 1'b0) begin
			PC_new = PC + ((flushPipeline == 1'b1) ? 32'd0 : 32'd4);
		end
		else begin
			PC_new = JumpAddress;
		end
	end
	else begin
		PC_new = EXMEM_BranchALUOut;
	end
end

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
			IFID_instr		<= 32'h13;
			IFID_PC			<= 32'hffffffff;
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
// can also probably add illegal instruction checks here as well
// just OR it with syscall and give it to the control stall unit
assign syscall		= (IDEX_Jump==1'b0 & 
						IDEX_JumpJALR==1'b0&opcode == `I_ENV_FORMAT & funct3==0) ? 1'b1 : 1'b0;


always @(*) begin
	if(reg_type == 2'b01) begin
		if(funct3[1:0] == 2'b00) begin
			csr_write_allowed = 1'b0;
		end
		else if(funct3[1:0] == 2'b01) begin
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
			IDEX_rdA		<= 32'b0;
			IDEX_rdB		<= 32'b0;
			IDEX_reg_type	<= 3'b0;
			IDEX_instr		<= 32'b0;
			IDEX_csr_addr	<= 12'b0;
			IDEX_csr_write_allowed <= 1'b0;
			IDEX_PC			<= 32'hffffffff;
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
reg [31:0] newmepc;
reg [255*8-1:0] pc_string;
reg pc_jumped;


localparam MEPC_IDLE = 32'h0;
localparam MEPC_WAITINGJUMP = 32'h1;

reg mepc_state;
always@(posedge clock or negedge reset)begin
	if(reset==1'b0)begin
		pc_string<="Reset";
		newmepc <= 32'h0;
		pc_jumped <= 1'b0;
		mepc_state <= MEPC_IDLE;
	end
	else
	begin

		case(mepc_state)
			MEPC_IDLE:begin
				if(flushPipeline)
				begin
					if(branch_taken||Jump||EXMEM_JumpJALR)
					begin
						pc_string<="BID Taken";
						newmepc <= PC_new;
					end
					else if(write_pc==1'b0&&IFID_PC!=32'hffffffff)
					begin
						pc_string<="stalled due to loadWord";
						newmepc <= IFID_PC;
					end
					else if(PC_IF2!=32'hffffffff)
					begin
						pc_string<="IF2 Taken";
						newmepc <= PC_IF2;
					end
					else
					begin
						pc_string<="PC Taken";
						newmepc <= PC;
					end
					mepc_state <= MEPC_WAITINGJUMP;
				end
			end
			MEPC_WAITINGJUMP:begin
				if(branch_taken||Jump||EXMEM_JumpJALR)
				begin
					pc_string<="Branch Taken";
					newmepc <= PC_new;
				end
				if(flushPipeline==1'b0)
				begin
					mepc_state <= MEPC_IDLE;
				end
			end
		endcase

	end

end
wire flushPipeline;


// TODO: There is an issue if you have csrw mepc
// and then mret. MEPC is not written yet and 
// cannot be forwared. This means that a stall
// is needed which has not been implemented :P
CSRFile csrFile(
	.clock(clock),
	.reset(reset),
	.wen(MEMWB_csr_write_allowed),
	.ren(reg_type==2'b01),
	.csrAddr(csr_addr),
	.csrWAddr(MEMWB_csr_addr),
	.wd(WB_csr_data),
	.rd(csr_data),
	.write_pc(write_pc),

	// clic signals
	.PC_ID(IFID_PC),
	// maybe check if we are on a branch, if so then we need save the branch
	.new_mepc(newmepc),
	.software_interrupt(software_interrupt),
	.timer_interrupt(timer_interrupt),
	.external_interrupt(external_interrupt),
	.syscall(trap_waiting),
	.int_taken(int_taken),
	.trap_in_ID(trap_in_ID),
	.flushPipeline(flushPipeline),
	.trap_vector(trap_vector)
);
// Main Control Unit
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
	.trap_waiting	(trap_waiting),
	.instr_stall	(instr_stall),
	.ifid_rs		(instr_rs1),
	.ifid_rt		(instr_rs2),
	.idex_rd		(IDEX_instr_rd),
	.memRead		(MemRead),
	.idex_memWrite	(IDEX_MemWrite),
	.idex_memread	(IDEX_MemRead),
	.Jump			(Jump),
	.IDEX_Branch	(IDEX_Branch),
	.EXMEM_Branch	(EXMEM_Branch),
	.syscall		(syscall),
	.trap_in_ID		(trap_in_ID),
	.int_trap		(int_taken),
	.flushPipeline	(flushPipeline),
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
		EXMEM_funct3		<= 3'b0;
		EXMEM_csr_data		<= 32'b0;
		EXMEM_reg_type		<= 2'b00;
		EXMEM_csr_addr		<= 12'b0;
		EXMEM_csr_write_allowed <= 1'b0;
		EXMEM_PC			<= 32'hffffffff;
		EXMEM_instr			<= 32'b0;
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
			EXMEM_funct3		<= 3'b0;
			EXMEM_csr_data		<= 32'b0;
			EXMEM_reg_type		<= 2'b00;
			EXMEM_csr_addr		<= 12'b0;
			EXMEM_csr_write_allowed <= 1'b0;
			EXMEM_PC			<= 32'hffffffff;
			EXMEM_instr			<= 32'b0;
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
			EXMEM_PC			<= IDEX_PC;
			EXMEM_instr			<= IDEX_instr;
		end
	end
end

// ALU control unit
// Determines the ALU operation based on the instruction
control_alu control_alu(
	.ALUOp(ALUOp), 
	.ALUcntrl(IDEX_ALUcntrl), 
	.csr_immidiate(csr_immidiate),
	.funct3(IDEX_funct3), 
	.funct7(IDEX_funct7)
);

// Bypass control
// Controls what the ALU inputs are
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
		MEMWB_funct3		<= 3'b0;
		MEMWB_csr_data		<= 32'b0;
		MEMWB_reg_type		<= 2'b00;
		MEMWB_csr_addr		<= 12'b0;
		MEMWB_csr_write_allowed <= 1'b0;
		MEMWB_PC			<= 32'b0;
		MEMWB_instr			<= 32'b0;
	end 
	else 
	begin
		if(bubble_memwb == 1'b1) begin
			MEMWB_DMemOut		<= 32'b0;
			MEMWB_ALUOut		<= 32'b0;
			MEMWB_RegWriteAddr	<= 5'b0;
			MEMWB_MemToReg		<= 1'b0;
			MEMWB_RegWrite		<= 1'b0;
			MEMWB_funct3		<= 3'b0;
			MEMWB_csr_data		<= 32'b0;
			MEMWB_reg_type		<= 2'b00;
			MEMWB_csr_addr		<= 12'b0;
			MEMWB_csr_write_allowed <= 1'b0;
			MEMWB_PC			<= 32'hffffffff;
			MEMWB_instr			<= 32'b0;
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
			MEMWB_PC			<= EXMEM_PC;
			MEMWB_instr			<= EXMEM_instr;
		end
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
		// if we are not writing to memory get the data from the ALU
		if (MEMWB_MemToReg == 1'b0) begin
			wRegData = MEMWB_ALUOut;
		// if we are writing to memory get the data from the memory
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
		// if we are not writing to memory get the data from the ALU
		if (MEMWB_MemToReg == 1'b0) begin
			WB_csr_data = MEMWB_ALUOut;
		// if we are writing to memory get the data from the memory
		end else begin
			WB_csr_data = MemOut;
		end
	end
	else
	begin
		WB_csr_data = 0;
	end
end

endmodule
