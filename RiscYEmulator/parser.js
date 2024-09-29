
function signExtend(value, bits) {
    const shift = 32 - bits;
    return (value << shift) >> shift;
  }
  
  function decodeInstruction(hexInstruction) {
    // Convert the hex string to a 32-bit unsigned integer
    const instruction = parseInt(hexInstruction, 16) >>> 0;
  
    // Extract common fields
    const opcode = instruction & 0x7F;
    const rd = (instruction >>> 7) & 0x1F;
    const funct3 = (instruction >>> 12) & 0x7;
    const rs1 = (instruction >>> 15) & 0x1F;
    const rs2 = (instruction >>> 20) & 0x1F;
    const funct7 = (instruction >>> 25) & 0x7F;
  
    // Register names mapping
    const registerNames = [
      'zero', 'ra',  'sp',  'gp',  'tp',  't0', 't1', 't2',
      's0',   's1',  'a0',  'a1',  'a2',  'a3', 'a4', 'a5',
      'a6',   'a7',  's2',  's3',  's4',  's5', 's6', 's7',
      's8',   's9',  's10', 's11', 't3',  't4', 't5', 't6'
    ];
  
    let mnemonic = '';
    let imm = 0;
  
    switch (opcode) {
      case R_FORMAT: // R-type instructions
        switch (funct3) {
          case FUNCT3_ADD_SUB:
            if (funct7 === FUNCT7_ADD) {
              mnemonic = 'add';
            } else{
              mnemonic = 'sub';
            }
            break;
          case FUNCT3_SLL:
            mnemonic = 'sll';
            break;
          case FUNCT3_SLT:
            mnemonic = 'slt';
            break;
          case FUNCT3_SLTU:
            mnemonic = 'sltu';
            break;
          case FUNCT3_XOR:
            mnemonic = 'xor';
            break;
          case FUNCT3_SRL:
            if (funct7 === FUNCT7_SRL) {
              mnemonic = 'srl';
            } else{
              mnemonic = 'sra';
            }
            break;
          case FUNCT3_OR:
            mnemonic = 'or';
            break;
          case FUNCT3_AND:
            mnemonic = 'and';
            break;
          default:
            return 'Unknown instruction';
        }
        return `${mnemonic} ${registerNames[rd]}, ${registerNames[rs1]}, ${registerNames[rs2]}`;
  
      case I_COMP_FORMAT: // I-type ALU instructions
        imm = signExtend((instruction >>> 20) & 0xFFF, 12);
        switch (funct3) {
          case FUNCT3_ADDI:
            mnemonic = 'addi';
            break;
          case FUNCT3_SLTI:
            mnemonic = 'slti';
            break;
          case FUNCT3_SLTIU:
            mnemonic = 'sltiu';
            break;
          case FUNCT3_XORI:
            mnemonic = 'xori';
            break;
          case FUNCT3_ORI:
            mnemonic = 'ori';
            break;
          case FUNCT3_ANDI:
            mnemonic = 'andi';
            break;
          case FUNCT3_SLLI:
            mnemonic = 'slli';
            imm = (instruction >>> 20) & 0x1F;
            break;
          case FUNCT3_SRLI:
            if (funct7 === FUNCT7_SRL) {
              mnemonic = 'srli';
            } else{
              mnemonic = 'srai';
            }
            imm = (instruction >>> 20) & 0x1F;
            break;
          default:
            return 'Unknown instruction';
        }
        return `${mnemonic} ${registerNames[rd]}, ${registerNames[rs1]}, ${imm}`;
  
      case I_LOAD_FORMAT: // Load instructions
        imm = signExtend((instruction >>> 20) & 0xFFF, 12);
        switch (funct3) {
          case FUNCT3_LB:
            mnemonic = 'lb';
            break;
          case FUNCT3_LH:
            mnemonic = 'lh';
            break;
          case FUNCT3_LW:
            mnemonic = 'lw';
            break;
          case FUNCT3_LBU:
            mnemonic = 'lbu';
            break;
          case FUNCT3_LHU:
            mnemonic = 'lhu';
            break;
          default:
            return 'Unknown instruction';
        }
        return `${mnemonic} ${registerNames[rd]}, ${imm}(${registerNames[rs1]})`;
  
      case S_FORMAT: // S-type instructions
        const imm4_0 = (instruction >>> 7) & 0x1F;
        const imm11_5 = (instruction >>> 25) & 0x7F;
        imm = signExtend((imm11_5 << 5) | imm4_0, 12);
        switch (funct3) {
          case FUNCT3_SB:
            mnemonic = 'sb';
            break;
          case FUNCT3_SH:
            mnemonic = 'sh';
            break;
          case FUNCT3_SW:
            mnemonic = 'sw';
            break;
          default:
            return 'Unknown instruction';
        }
        return `${mnemonic} ${registerNames[rs2]}, ${imm}(${registerNames[rs1]})`;
  
      case B_FORMAT: // B-type instructions
        const imm12 = (instruction >>> 31) & 0x1;
        const imm10_5 = (instruction >>> 25) & 0x3F;
        const imm4_1 = (instruction >>> 8) & 0xF;
        const imm11 = (instruction >>> 7) & 0x1;
        imm = signExtend((imm12 << 12) | (imm11 << 11) | (imm10_5 << 5) | (imm4_1 << 1), 13);
        switch (funct3) {
          case FUNCT3_BEQ:
            mnemonic = 'beq';
            break;
          case FUNCT3_BNE:
            mnemonic = 'bne';
            break;
          case FUNCT3_BLT:
            mnemonic = 'blt';
            break;
          case FUNCT3_BGE:
            mnemonic = 'bge';
            break;
          case FUNCT3_BLTU:
            mnemonic = 'bltu';
            break;
          case FUNCT3_BGEU:
            mnemonic = 'bgeu';
            break;
          default:
            return 'Unknown instruction';
        }
        return `${mnemonic} ${registerNames[rs1]}, ${registerNames[rs2]}, ${imm}`;
  
      case U_FORMAT_LUI: // LUI
        imm = instruction & 0xFFFFF000;
        mnemonic = 'lui';
        return `${mnemonic} ${registerNames[rd]}, ${imm}`;
  
      case U_FORMAT_AUIPC: // AUIPC
        imm = instruction & 0xFFFFF000;
        mnemonic = 'auipc';
        return `${mnemonic} ${registerNames[rd]}, ${imm}`;
  
      case J_FORMAT: // J-type instructions (JAL)
        const imm20 = (instruction >>> 31) & 0x1;
        const imm10_1 = (instruction >>> 21) & 0x3FF;
        const imm11_1 = (instruction >>> 20) & 0x1;
        const imm19_12 = (instruction >>> 12) & 0xFF;
        imm = signExtend((imm20 << 20) | (imm19_12 << 12) | (imm11_1 << 11) | (imm10_1 << 1), 21);
        mnemonic = 'jal';
        return `${mnemonic} ${registerNames[rd]}, ${imm}`;
  
      case I_JALR_FORMAT: // JALR
        imm = signExtend((instruction >>> 20) & 0xFFF, 12);
        mnemonic = 'jalr';
        return `${mnemonic} ${registerNames[rd]}, ${imm}(${registerNames[rs1]})`;
  
      default:
        return 'Unknown instruction';
    }
  }