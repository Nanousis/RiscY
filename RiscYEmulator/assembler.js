const errors=[];
// Register names mapping
const registerNames = {
zero: 0, ra: 1, sp: 2, gp: 3, tp: 4,
t0: 5, t1: 6, t2: 7,
s0: 8, s1: 9,
a0: 10, a1: 11, a2: 12, a3: 13, a4: 14, a5: 15, a6: 16, a7: 17,
s2: 18, s3: 19, s4: 20, s5: 21, s6: 22, s7: 23, s8: 24, s9: 25, s10: 26, s11: 27,
t3: 28, t4: 29, t5: 30, t6: 31,
x0: 0, x1: 1, x2: 2, x3: 3, x4: 4,
x5: 5, x6: 6, x7: 7, x8: 8, x9: 9,
x10: 10, x11: 11, x12: 12, x13: 13, x14: 14, x15: 15, x16: 16, x17: 17,
x18: 18, x19: 19, x20: 20, x21: 21, x22: 22, x23: 23, x24: 24, x25: 25, x26: 26, x27: 27,
x28: 28, x29: 29, x30: 30, x31: 31
};
function assembleCode(assemblyCode) {
const lines = assemblyCode.split('\n');
const instructions = [];
const labels = {};
const output = [];

// First pass: parse instructions and collect labels
    // First pass: parse instructions and collect labels
    let address = 0;
    for (let lineNumber = 0; lineNumber < lines.length; lineNumber++) {
        let line = lines[lineNumber].trim();
        if (line === '' || line.startsWith('//') || line.startsWith('#')) continue;

        // Handle labels
        if (line.endsWith(':')) {
            const label = line.slice(0, -1).trim();
            labels[label] = address;
        } else {
            instructions.push({ line, address, lineNumber: lineNumber + 1 }); // Store line number (1-based)
            address += 4; // Assuming each instruction is 4 bytes
        }
    }

    // Second pass: assemble instructions
    for (let { line, address, lineNumber } of instructions) {
        try {
            const machineCodes = assembleInstruction(line, address, labels);
            if (Array.isArray(machineCodes)) {
                // For pseudo-instructions that expand to multiple instructions
                output.push(...machineCodes);
            } else {
                output.push(machineCodes);
            }
        } catch (e) {
            // Collect the error with the instruction line and line number
            errors.push(`${lineNumber} -> ${line} -> ${e.message}`);
        }
    }

return output;
}

function assembleInstruction(assembly, address, labels) {
const [mnemonic, ...operandsRaw] = assembly.trim().split(/\s+/);
let opcode, funct3 = 0, funct7 = 0, rd = 0, rs1 = 0, rs2 = 0, imm = 0;

// Helper function to get register number
function getRegister(regStr) {
    regStr = regStr.replace(',', '').trim();
    const regNum = registerNames[regStr];
    if (regNum === undefined) {
    throw new Error(`Invalid register: ${regStr}`);
    }
    return regNum>>>0;
}

// Helper function to parse immediate values
function parseImmediate(immStr) {
    immStr = immStr.trim();
    if (immStr.startsWith('0x')) {
    return parseInt(immStr, 16);
    } else if (immStr.startsWith("'") && immStr.endsWith("'")) {
    return immStr.charCodeAt(1);
    } else if (/^-?\d+$/.test(immStr)) {
    return parseInt(immStr, 10);
    } else if (labels[immStr] !== undefined) {
    // Label reference
    return labels[immStr] - address;
    } else {
    throw new Error(`Invalid immediate value: ${immStr}`);
    }
}

// Handle pseudo-instructions
if (mnemonic === 'li') {
    const rdStr = operandsRaw[0].replace(',', '').trim();
    const immStr = operandsRaw.slice(1).join(' ').trim();
    const rd = getRegister(rdStr);
    const imm = parseImmediate(immStr);

    if (imm >= -2048 && imm <= 2047) {
    return assembleInstruction(`addi ${rdStr}, zero, ${imm}`, address, labels);
    } else {
    const upper = (imm + 0x800) >> 12;
    const lower = imm & 0xFFF;
    const tempInst1 = `lui ${rdStr}, ${upper}`;
    const tempInst2 = `addi ${rdStr}, ${rdStr}, ${lower}`;
    const machineCode1 = assembleInstruction(tempInst1, address, labels);
    const machineCode2 = assembleInstruction(tempInst2, address + 4, labels);
    return [machineCode1, machineCode2];
    }
}

// Handle standard instructions
const operandsStr = operandsRaw.join(' ');
const operands = operandsStr.split(',').map(op => op.trim());

switch (mnemonic) {
    /*** R-type Instructions ***/
    case 'add':
    case 'sub':
    case 'sll':
    case 'slt':
    case 'sltu':
    case 'xor':
    case 'srl':
    case 'sra':
    case 'or':
    case 'and': {
    opcode = 0x33;
    rd = getRegister(operands[0]);
    rs1 = getRegister(operands[1]);
    rs2 = getRegister(operands[2]);
    switch (mnemonic) {
        case 'add':
        funct3 = 0x0;
        funct7 = 0x00;
        break;
        case 'sub':
        funct3 = 0x0;
        funct7 = 0x20;
        break;
        case 'sll':
        funct3 = 0x1;
        funct7 = 0x00;
        break;
        case 'slt':
        funct3 = 0x2;
        funct7 = 0x00;
        break;
        case 'sltu':
        funct3 = 0x3;
        funct7 = 0x00;
        break;
        case 'xor':
        funct3 = 0x4;
        funct7 = 0x00;
        break;
        case 'srl':
        funct3 = 0x5;
        funct7 = 0x00;
        break;
        case 'sra':
        funct3 = 0x5;
        funct7 = 0x20;
        break;
        case 'or':
        funct3 = 0x6;
        funct7 = 0x00;
        break;
        case 'and':
        funct3 = 0x7;
        funct7 = 0x00;
        break;
    }
    break;
    }

    /*** I-type ALU Instructions ***/
    case 'addi':
    case 'slti':
    case 'sltiu':
    case 'xori':
    case 'ori':
    case 'andi':
    case 'slli':
    case 'srli':
    case 'srai': {
    opcode = 0x13;
    rd = getRegister(operands[0]);
    rs1 = getRegister(operands[1]);
    imm = parseImmediate(operands[2]);
    switch (mnemonic) {
        case 'addi':
        funct3 = 0x0;
        break;
        case 'slti':
        funct3 = 0x2;
        break;
        case 'sltiu':
        funct3 = 0x3;
        break;
        case 'xori':
        funct3 = 0x4;
        break;
        case 'ori':
        funct3 = 0x6;
        break;
        case 'andi':
        funct3 = 0x7;
        break;
        case 'slli':
        funct3 = 0x1;
        funct7 = 0x00;
        imm &= 0x1F;
        break;
        case 'srli':
        funct3 = 0x5;
        funct7 = 0x00;
        imm &= 0x1F;
        break;
        case 'srai':
        funct3 = 0x5;
        funct7 = 0x20;
        imm &= 0x1F;
        break;
    }
    break;
    }

   
    /*** Load Instructions ***/
    case 'lb':
    case 'lh':
    case 'lw':
    case 'lbu':
    case 'lhu': {
      if (operands.length !== 2) {
        throw new Error(`Invalid operands for '${mnemonic}': ${operandsStr}`);
      }
      opcode = 0x03;
      rd = getRegister(operands[0]);
      const memOperand = operands[1];
      const match = memOperand.match(/^(-?\d+)?\((\w+)\)$/);
      if (!match) {
        throw new Error(`Invalid memory operand: ${memOperand}`);
      }
      imm = parseImmediate(match[1] || '0');
      rs1 = getRegister(match[2]);
      switch (mnemonic) {
        case 'lb':
          funct3 = 0x0;
          break;
        case 'lh':
          funct3 = 0x1;
          break;
        case 'lw':
          funct3 = 0x2;
          break;
        case 'lbu':
          funct3 = 0x4;
          break;
        case 'lhu':
          funct3 = 0x5;
          break;
      }
      break;
    }

    /*** Store Instructions ***/
    case 'sb':
    case 'sh':
    case 'sw': {
      if (operands.length !== 2) {
        throw new Error(`Invalid operands for '${mnemonic}': ${operandsStr}`);
      }
      opcode = 0x23;
      rs2 = getRegister(operands[0]);
      const memOperand = operands[1];
      const match = memOperand.match(/^(-?\d+)?\((\w+)\)$/);
      if (!match) {
        throw new Error(`Invalid memory operand: ${memOperand}`);
      }
      imm = parseImmediate(match[1] || '0');
      rs1 = getRegister(match[2]);
      switch (mnemonic) {
        case 'sb':
          funct3 = 0x0;
          break;
        case 'sh':
          funct3 = 0x1;
          break;
        case 'sw':
          funct3 = 0x2;
          break;
      }
      break;
    }

    /*** Branch Instructions ***/
    case 'beq':
    case 'bne':
    case 'blt':
    case 'bge':
    case 'bltu':
    case 'bgeu': {
    opcode = 0x63;
    rs1 = getRegister(operands[0]);
    rs2 = getRegister(operands[1]);
    imm = parseImmediate(operands[2]);
    switch (mnemonic) {
        case 'beq':
        funct3 = 0x0;
        break;
        case 'bne':
        funct3 = 0x1;
        break;
        case 'blt':
        funct3 = 0x4;
        break;
        case 'bge':
        funct3 = 0x5;
        break;
        case 'bltu':
        funct3 = 0x6;
        break;
        case 'bgeu':
        funct3 = 0x7;
        break;
    }
    break;
    }

    /*** JAL Instruction ***/
    case 'jal': {
    opcode = 0x6F;
    rd = getRegister(operands[0]);
    imm = parseImmediate(operands[1]);
    break;
    }

    /*** JALR Instruction ***/
    case 'jalr': {
    opcode = 0x67;
    rd = getRegister(operands[0]);
    imm = parseImmediate(operands[1]);
    rs1 = getRegister(operands[2]);
    funct3 = 0x0;
    break;
    }

    /*** LUI and AUIPC Instructions ***/
    case 'lui':
    case 'auipc': {
    rd = getRegister(operands[0]);
    imm = parseImmediate(operands[1]);
    opcode = mnemonic === 'lui' ? 0x37 : 0x17;
    break;
    }

    /*** Other Instructions ***/
    case 'j': {
    // Pseudo-instruction: 'j label' is 'jal zero, label'
    return assembleInstruction(`jal zero, ${operands[0]}`, address, labels);
    }

    case 'bnez': {
    // Pseudo-instruction: 'bnez rs, label' is 'bne rs, zero, label'
    return assembleInstruction(`bne ${operands[0]}, zero, ${operands[1]}`, address, labels);
    }

    default:
    throw new Error(`Unsupported instruction: ${mnemonic}`);
}

// Assemble the instruction
let instruction = 0;

switch (opcode) {
    case 0x33: { // R-type
    instruction |= (funct7 & 0x7F) << 25;
    instruction |= (rs2 & 0x1F) << 20;
    instruction |= (rs1 & 0x1F) << 15;
    instruction |= (funct3 & 0x7) << 12;
    instruction |= (rd & 0x1F) << 7;
    instruction |= opcode & 0x7F;
    break;
    }

    case 0x13: // I-type
    case 0x03:
    case 0x67: {
    instruction |= ((imm & 0xFFF) << 20);
    instruction |= (rs1 & 0x1F) << 15;
    instruction |= (funct3 & 0x7) << 12;
    instruction |= (rd & 0x1F) << 7;
    instruction |= opcode & 0x7F;
    break;
    }

    case 0x23: { // S-type
    const imm11_5 = (imm >> 5) & 0x7F;
    const imm4_0 = imm & 0x1F;
    instruction |= (imm11_5 << 25);
    instruction |= (rs2 & 0x1F) << 20;
    instruction |= (rs1 & 0x1F) << 15;
    instruction |= (funct3 & 0x7) << 12;
    instruction |= (imm4_0 << 7);
    instruction |= opcode & 0x7F;
    break;
    }

    case 0x63: { // B-type
    const offset = imm;
    const imm12 = (offset >> 12) & 0x1;
    const imm10_5 = (offset >> 5) & 0x3F;
    const imm4_1 = (offset >> 1) & 0xF;
    const imm11 = (offset >> 11) & 0x1;
    instruction |= (imm12 << 31);
    instruction |= (imm11 << 7);
    instruction |= (imm10_5 << 25);
    instruction |= (imm4_1 << 8);
    instruction |= (rs2 & 0x1F) << 20;
    instruction |= (rs1 & 0x1F) << 15;
    instruction |= (funct3 & 0x7) << 12;
    instruction |= opcode & 0x7F;
    break;
    }

    case 0x6F: { // J-type
    const offset = imm;
    const imm20 = (offset >> 20) & 0x1;
    const imm10_1 = (offset >> 1) & 0x3FF;
    const imm11 = (offset >> 11) & 0x1;
    const imm19_12 = (offset >> 12) & 0xFF;
    instruction |= (imm20 << 31);
    instruction |= (imm19_12 << 12);
    instruction |= (imm11 << 20);
    instruction |= (imm10_1 << 21);
    instruction |= (rd & 0x1F) << 7;
    instruction |= opcode & 0x7F;
    break;
    }

    case 0x37: // U-type (LUI)
    case 0x17: // U-type (AUIPC)
    instruction |= (imm & 0xFFFFF000);
    instruction |= (rd & 0x1F) << 7;
    instruction |= opcode & 0x7F;
    break;

    default:
    throw new Error(`Unsupported opcode: ${opcode.toString(2)}`);
}

// Convert instruction to hex string
const hexInstruction = (instruction >>> 0).toString(16).padStart(8, '0');
return hexInstruction;
}

// Example usage:

// const code = `
// li a0, 'A'
// main_loop:
// addi a0, a0, 1
// li s1, 1024
// addi s2, s1, 64

// li t0, 0
// li t1, 16
// li t2, 0
// li t3, 4
// loopXPlus:
// add t5, t0, s1
// sb a0, 0(t5)
// addi t0, t0, 1
// blt t0, t1, loopXPlus
// loopYminus:
// addi t5, t5, 16
// sb a0, 0(t5)
// addi t2, t2, 1
// blt t2, t3, loopYminus

// li t0, 15
// addi t5, t5, -16
// loopXMinus:
// addi t5, t5, -1
// sb a0, 0(t5)
// addi t0, t0, -1
// bnez t0, loopXMinus

// li t2, 0
// loopYPlus:
// addi t5, t5, -16
// sb a0, 0(t5)
// addi t2, t2, 1
// blt t2, t3, loopYPlus
// j main_loop
// `;

// const machineCodes = assembleCode(code);
// let address = 0;
// console.log('Machine code:', machineCodes.join('\n'));
// machineCodes.forEach((code) => {
// console.log(`0x${address.toString(16).padStart(4, '0')}: ${code}`);
// address += 4;
// });
