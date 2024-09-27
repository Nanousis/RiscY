
// Define preset code snippets
var presets = [
    {
      name: "Hello World",
      code: `40000413
04800293
00540023
00140413
06500293
00540023
00140413
06c00293
00540023
00140413
06c00293
00540023
00140413
06f00293
00540023
00140413
02000293
00540023
00140413
07700293
00540023
00140413
06f00293
00540023
00140413
07200293
00540023
00140413
06c00293
00540023
00140413
06400293
00540023
00140413
02100293
00540023
00140413
00000013
ffdff06f`
,
assembly:`
li s0, 1024
li t0, 'H'
sb t0, 0(s0)
addi s0, s0, 1
li t0, 'e'
sb t0, 0(s0)
addi s0, s0, 1
li t0, 'l'
sb t0, 0(s0)
addi s0, s0,1
li t0, 'l'
sb t0, 0(s0)
addi s0, s0, 1
li t0, 'o'
sb t0, 0(s0)
addi s0, s0, 1
li t0, ' '
sb t0, 0(s0)
addi s0, s0, 1
li t0, 'w'
sb t0, 0(s0)
addi s0, s0,1
li t0, 'o'
sb t0, 0(s0)
addi s0, s0, 1
li t0, 'r'
sb t0, 0(s0)
addi s0, s0, 1
li t0, 'l'
sb t0, 0(s0)
addi s0, s0,1
li t0, 'd'
sb t0, 0(s0)
addi s0, s0, 1
li t0, '!'
sb t0, 0(s0)
loop:
li x0,0
j loop
`
    },
    {
        name: "Simple Loop1",
        code: `
04100513
00150513
40000493
04048913
00000293
01000313
00000393
00400e13
00928f33
00af0023
00128293
fe62cae3
010f0f13
00af0023
00138393
ffc3cae3
00f00293
ff0f0f13
ffff0f13
00af0023
fff28293
fe029ae3
00000393
ff0f0f13
00af0023
00138393
ffc3cae3
f99ff06f
  `,
  assembly:`
     li a0, 'A'
main_loop:
addi a0,a0,1
li s1,1024
    addi s2,s1,64

    li t0,0
    li t1,16
    li t2, 0
    li t3, 4
    loopXPlus:
    add t5,t0,s1
    sb a0,0(t5)
    addi t0,t0,1
    blt t0,t1,loopXPlus
    loopYminus:
    addi t5,t5,16
    sb a0,0(t5)
    add t2,t2,1
    blt t2,t3, loopYminus
	
    li t0,15
    addi t5,t5,-16
    loopXMinus:
    addi t5,t5,-1
    sb a0,0(t5)
    addi t0,t0,-1
    bnez t0,loopXMinus
    
    li t2,0
    loopYPlus:
    addi t5,t5,-16
    sb a0,0(t5)
    add t2,t2,1
    blt t2,t3, loopYPlus
    j main_loop
       `
      },
      
    {
      name: "Simple Loop2",
      code: `
04100513
02000593
00150513
40000493
04048913
00000293
01000313
00000393
00400e13
00928f33
00af0023
ffff0e93
00be8023
00128293
fe62c6e3
010f0f13
00af0023
ff0f0e93
00be8023
00138393
ffc3c6e3
00f00293
ff0f0f13
ffff0f13
00af0023
001f0e93
00be8023
fff28293
fe0296e3
00000393
ff0f0f13
00af0023
010f0e93
00be8023
00138393
ffc3c6e3
f79ff06f
`,
assembly:`
/*
li a0, 'A'
li a1, ' '
main_loop:
addi a0,a0,1
li s1, 1024
addi s2,s1,64

li t0, 0
li t1, 16
li t2, 0
li t3, 4
loopXPlus:
add t5,t0,s1
sb a0,0(t5)
addi t4,t5,-1
sb a1,0(t4)
addi t0,t0,1
blt t0,t1,loopXPlus
loopYminus:
addi t5,t5,16
sb a0,0(t5)
addi t4,t5,-16
sb a1,0(t4)
addi t2,t2, 1
blt t2,t3, loopYminus

li t0, 15
addi t5,t5,-16
loopXMinus:
addi t5,t5,-1
sb a0,0(t5)
addi t4,t5,1
sb a1,0(t4)
addi t0,t0,-1
bnez t0,loopXMinus

li t2, 0
loopYPlus:
addi t5,t5,-16
sb a0,0(t5)
addi t4,t5,16
sb a1,0(t4)
addi t2,t2,1
blt t2,t3, loopYPlus
j main_loop
`
    },
    {
    name: "Show All Characters",
      code: `
00000293
40000413
04040493
00040313
00530023
00130313
00128293
fe934ae3
fedff06f
      `,
      assembly:`
      /*
    li t0,0
    li s0,1024
    addi s1,s0,64
    mainLoop:
    addi t1,s0,0
    loop:
    sb t0,0(t1)
    addi t1,t1,1
    addi t0,t0,1
    blt t1,s1,loop
    j mainLoop
    `
    }
    // Add more presets as needed
  ];

/********* ALU Operations *********/
 const ADD    = 0b0001;
 const SUB    = 0b0001;
 const XOR    = 0b0010;
 const OR     = 0b0011;
 const AND    = 0b0100;
 const SLL    = 0b0101;
 const SRL    = 0b0110;
 const SRA    = 0b0111;
 const SLT    = 0b1000;
 const SLTU   = 0b1001;
 const SUBU   = 0b1010;
 const LUI    = 0b1011;
 const AUIPC  = 0b1100;
/********* Opcode Formats *********/
 const R_FORMAT           = 0b0110011;
 const I_COMP_FORMAT      = 0b0010011;
 const I_LOAD_FORMAT      = 0b0000011;
 const I_JALR_FORMAT      = 0b1100111;
 const I_ENV_FORMAT       = 0b1110011;
 const S_FORMAT           = 0b0100011;
 const B_FORMAT           = 0b1100011;
 const J_FORMAT           = 0b1101111;
 const U_FORMAT_LUI       = 0b0110111;   // U-format
 const U_FORMAT_AUIPC     = 0b0010111; // U-format


/************ Funct3 *************/
/*********** R-format ************/
 const FUNCT3_ADD_SUB     = 0b000;
 const FUNCT3_XOR         = 0b100;
 const FUNCT3_OR          = 0b110;
 const FUNCT3_AND         = 0b111;
 const FUNCT3_SLL         = 0b001;
 const FUNCT3_SRL         = 0b101;
 const FUNCT3_SLT         = 0b010;
 const FUNCT3_SLTU        = 0b011;
/********* I-COMP-format *********/
 const FUNCT3_ADDI        = 0b000;
 const FUNCT3_XORI        = 0b100;
 const FUNCT3_ORI         = 0b110;
 const FUNCT3_ANDI        = 0b111;
 const FUNCT3_SLLI        = 0b001;
 const FUNCT3_SRLI        = 0b101;
 const FUNCT3_SLTI        = 0b010;
 const FUNCT3_SLTIU       = 0b011;
/********* I-LOAD-format *********/
 const FUNCT3_LB          = 0b000;
 const FUNCT3_LH          = 0b001;
 const FUNCT3_LW          = 0b010;
 const FUNCT3_LBU         = 0b100;
 const FUNCT3_LHU         = 0b101;
/*********** S-format ************/
 const FUNCT3_SB          = 0b000;
 const FUNCT3_SH          = 0b001;
 const FUNCT3_SW          = 0b010;
/*********** B-format ************/
 const FUNCT3_BEQ         = 0b000;
 const FUNCT3_BNE         = 0b001;
 const FUNCT3_BLT         = 0b100;
 const FUNCT3_BGE         = 0b101;
 const FUNCT3_BLTU        = 0b110;
 const FUNCT3_BGEU        = 0b111;

/******* Funct7, R-format ********/
 const FUNCT7_ADD = 0x00;
 const FUNCT7_SRL = 0x00;

/********* ALUcntrl Codes ********/
 const ALU_R           = 0b000;
 const ALU_LOAD_STORE  = 0b001;
 const ALU_BRANCH      = 0b010;
 const ALU_LUI         = 0b011;
 const ALU_AUIPC       = 0b100; 
 const ALU_I_COMP      = 0b101;
 const ALU_J           = 0b110;

 const BEQ_CODE        = 0b00;
 const BNE_CODE        = 0b01;
 const BLT_CODE        = 0b10;
 const BGE_CODE        = 0b11;