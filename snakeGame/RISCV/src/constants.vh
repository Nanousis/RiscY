`ifndef RV_CONSTANTS
`define RV_CONSTANTS

/********* Timing Constants ********/
/***********************************/
`define clock_period 20
`define clk_to_q_min 0.1
`define clk_to_q_max 0.2
`define setup 0.2
`define hold  0.1
/***********************************/
`define alu_delay	1.5
`define mux2_delay	0.2
`define mux4_delay	0.3
`define mux8_delay  0.4
`define nor32_delay 0.3
/***********************************/
`define mem_data_delay 1.5
`define mem_addr_delay 0.5
`define rf_data_delay  0.7
`define rf_addr_delay  0.5

/********* ALU Operations *********/
`define ADD 4'b0000
`define SUB 4'b0001
`define XOR 4'b0010
`define OR 4'b0011
`define AND 4'b0100
`define SLL 4'b0101
`define SRL 4'b0110
`define SRA 4'b0111
`define SLT 4'b1000
`define SLTU 4'b1001
`define SUBU 4'b1010
`define LUI 4'b1011
`define AUIPC 4'b1100


/********* Opcode Formats *********/
`define R_FORMAT  7'b0110011
`define I_COMP_FORMAT 7'b0010011
`define I_LOAD_FORMAT 7'b0000011
`define I_JALR_FORMAT 7'b1100111
`define I_ENV_FORMAT 7'b1110011
`define S_FORMAT 7'b0100011
`define B_FORMAT 7'b1100011
`define J_FORMAT 7'b1101111
`define U_FORMAT_LUI 7'b0110111   // U-format
`define U_FORMAT_AUIPC 7'b0010111 // U-format


/************ Funct3 *************/
/*********** R-format ************/
`define FUNCT3_ADD_SUB 3'b000
`define FUNCT3_XOR 3'b100
`define FUNCT3_OR 3'b110
`define FUNCT3_AND 3'b111
`define FUNCT3_SLL 3'b001
`define FUNCT3_SRL 3'b101
`define FUNCT3_SLT 3'b010
`define FUNCT3_SLTU 3'b011
/********* I-COMP-format *********/
`define FUNCT3_ADDI 3'b000
`define FUNCT3_XORI 3'b100
`define FUNCT3_ORI 3'b110
`define FUNCT3_ANDI 3'b111
`define FUNCT3_SLLI 3'b001
`define FUNCT3_SRLI 3'b101
`define FUNCT3_SLTI 3'b010
`define FUNCT3_SLTIU 3'b011
/********* I-LOAD-format *********/
`define FUNCT3_LB 3'b000
`define FUNCT3_LH 3'b001
`define FUNCT3_LW 3'b010
`define FUNCT3_LBU 3'b100
`define FUNCT3_LHU 3'b101
/*********** S-format ************/
`define FUNCT3_SB 3'b000
`define FUNCT3_SH 3'b001
`define FUNCT3_SW 3'b010
/*********** B-format ************/
`define FUNCT3_BEQ 3'b000
`define FUNCT3_BNE 3'b001
`define FUNCT3_BLT 3'b100
`define FUNCT3_BGE 3'b101
`define FUNCT3_BLTU 3'b110
`define FUNCT3_BGEU 3'b111


/******* Funct7, R-format ********/
`define FUNCT7_ADD 7'h00
`define FUNCT7_SRL 7'h00

/********* ALUcntrl Codes ********/
`define ALU_R 3'b000
`define ALU_LOAD_STORE 3'b001
`define ALU_BRANCH 3'b010
`define ALU_LUI    3'b011
`define ALU_AUIPC  3'b100 
`define ALU_I_COMP 3'b101
`define ALU_J      3'b110

`define NOP 32'b0000_0000_0000_0000_0000_0000_0000_0000

`define BEQ_CODE 2'b00
`define BNE_CODE 2'b01
`define BLT_CODE 2'b10
`define BGE_CODE 2'b11

`endif