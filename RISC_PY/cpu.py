import traceback
from capstone import CS_ARCH_RISCV, CS_MODE_RISCV32, Cs
from tqdm import tqdm
from bus import Bus
from register import RegisterFile
from capstone.riscv import *
from global_log import *
import global_log
from numba import jit

class CPU:

    def __init__(self, register_file: RegisterFile, bus: Bus):
        self.regs = register_file
        self.bus  = bus
        self.md = Cs(CS_ARCH_RISCV, CS_MODE_RISCV32)
        self.md.detail = True

    def decode(self ,inst_word, PC):
        for insn in self.md.disasm(inst_word.to_bytes(4, 'little'), PC):
            return insn.mnemonic, insn.op_str, insn.operands
    @staticmethod
    def to_signed32(val):
        val &= 0xFFFFFFFF  # keep only lower 32 bits
        return val if val < 0x80000000 else val - 0x100000000
    def run(self, max_steps=1_000_000, start_pc=0x80000000):
        steps = 0
        pc = start_pc
        self.regs.pc = pc
        instr_dissasembly = ""
        try:
            for steps in tqdm(range(max_steps)):
                inst_word = self.bus.read(pc, 4)
                if inst_word == 0xFFFFFFFF:
                    print(f"Reached end at PC: {pc:08X}")
                    break

                # This should be done in advance ....
                mnemonic, op_str, operands = self.decode(inst_word, pc)
                instr_dissasembly = f"{mnemonic} {op_str}"
                event = DebugEvent(pc, inst_word)
                next_pc = pc + 4

                match mnemonic:
                    # --- R-type arithmetic/logic ---
                    case "add" | "sub" | "slt" | "sltu" | "and" | "or" | "xor" | "sll" | "srl" | "sra":
                        rd, rs1, rs2 = (o.reg-1 for o in operands)
                        a = self.regs.read(rs1)
                        b = self.regs.read(rs2)
                        res = {
                            "add":  a + b,
                            "sub":  a - b,
                            "slt":  1 if a < b else 0,
                            "sltu": 1 if (a & 0xFFFFFFFF) < (b & 0xFFFFFFFF) else 0,
                            "and":  a & b,
                            "or":   a | b,
                            "xor":  a ^ b,
                            "sll":  (a << (b & 0x1F)) & 0xFFFFFFFF,
                            "srl":  (a & 0xFFFFFFFF) >> (b & 0x1F),
                            "sra":  (a >> (b & 0x1F))
                        }[mnemonic]
                        self.regs.write(rd, res)
                        event.event_t       = EventType.REGISTER_WRITE
                        event.reg_changed = rd
                        event.reg_val   = res


                    # --- I-type arithmetic/logic & shifts ---
                    case "addi" | "slti" | "sltiu" | "andi" | "ori" | "xori" | "slli" | "srli" | "srai":
                        rd = operands[0].reg-1
                        rs1 = operands[1].reg-1
                        imm = operands[2].imm
                        a = self.regs.read(rs1)
                        if mnemonic in ("slli","srli","srai"):
                            sh = imm & 0x1F
                            res = {
                                "slli": (a << sh) & 0xFFFFFFFF,
                                "srli": (a & 0xFFFFFFFF) >> sh,
                                "srai": a >> sh
                            }[mnemonic]
                        else:
                            res = {
                                "addi":  a + imm,
                                "slti":  1 if a < imm else 0,
                                "sltiu": 1 if (a & 0xFFFFFFFF) < (imm & 0xFFFFFFFF) else 0,
                                "andi":  a & imm,
                                "ori":   a | imm,
                                "xori":  a ^ imm
                            }[mnemonic]
                        self.regs.write(rd, res)
                        event.event_t       = EventType.REGISTER_WRITE
                        event.reg_changed = rd
                        event.reg_val   = res
                    case "seqz" | "snez" | "sgtz" | "sltz" | "sgtz" | "slez":
                        # seqz rd, rs → slti rd, rs, 0
                        # snez rd, rs → slti rd, rs, 1
                        # sgtz rd, rs → slti rd, rs, 0
                        # sltz rd, rs → slti rd, rs, 0
                        # sgtz rd, rs → slti rd, rs, 0
                        # slez rd, rs → slti rd, rs, 0
                        rd, rs = (o.reg-1 for o in operands)
                        imm = 0 if mnemonic in ("seqz", "sltz", "sgtz", "slez") else 1
                        res = 1 if self.regs.read(rs) < imm else 0
                        self.regs.write(rd, res)
                        event.event_t       = EventType.REGISTER_WRITE
                        event.reg_changed = rd
                        event.reg_val   = res
                    # --- NOP ---
                    case "nop":
                        # nop is just a no‐operation, so we do nothing
                        event.event_t = EventType.NOP
                        event.new_pc = next_pc
                    # --- Move/Negate --- 
                    case "mv":
                        rd, rs = (o.reg-1 for o in operands)
                        val = self.regs.read(rs)
                        self.regs.write(rd, val)
                        event.event_t       = EventType.REGISTER_WRITE
                        event.reg_changed = rd
                        event.reg_val   = val
                    case "neg":
                        rd, rs = (o.reg-1 for o in operands)
                        val = -self.regs.read(rs) & 0xFFFFFFFF
                        self.regs.write(rd, val)
                        event.event_t       = EventType.REGISTER_WRITE
                        event.reg_changed = rd
                        event.reg_val   = val
                    # --- Loads (byte/half/word, signed/unsigned) ---
                    case "lb" | "lh" | "lw" | "lbu" | "lhu":
                        rd   = operands[0].reg - 1
                        base = operands[1].mem.base - 1
                        disp = operands[1].mem.disp
                        addr = self.regs.read(base) + disp
                        size = {"lb":1,"lh":2,"lw":4,"lbu":1,"lhu":2}[mnemonic]
                        raw  = self.bus.read(addr, size)
                        # sign‐extend for lb/lh
                        if mnemonic in ("lb","lh"):
                            bits = 8 if size==1 else 16
                            if raw & (1 << (bits-1)):
                                raw -= (1 << bits)
                        self.regs.write(rd, raw)
                        event.event_t       = EventType.MEMORY_READ
                        event.mem_addr   = addr
                        event.mem_val     = raw
                        event.reg_changed = rd
                        event.reg_val   = raw

                    # --- Stores (byte/half/word) ---
                    case "sb" | "sh" | "sw":
                        val_reg = operands[0].reg - 1
                        base    = operands[1].mem.base - 1
                        disp    = operands[1].mem.disp
                        addr    = self.regs.read(base) + disp
                        value   = self.regs.read(val_reg)
                        size    = {"sb":1,"sh":2,"sw":4}[mnemonic]
                        self.bus.write(addr, value, size)
                        event.event_t     = EventType.MEMORY_WRITE
                        event.mem_addr = addr
                        event.mem_val   = value

                    # --- Branches ---
                    case "beq" | "bne" | "blt" | "bge" | "bltu" | "bgeu":
                        r1 = self.regs.read(operands[0].reg-1)
                        r2 = self.regs.read(operands[1].reg-1)
                        imm = operands[2].imm
                        cond = {
                            "beq":
                                r1 == r2,
                            "bne":
                                r1 != r2,
                            "blt":
                                self.to_signed32(r1) < self.to_signed32(r2),
                            "bge":
                                self.to_signed32(r1) >= self.to_signed32(r2),
                            "bltu": (r1 & 0xFFFFFFFF) < (r2 & 0xFFFFFFFF),
                            "bgeu": (r1 & 0xFFFFFFFF) >= (r2 & 0xFFFFFFFF)
                        }[mnemonic]
                        if cond:
                            next_pc                = pc + imm
                            event.event_t       = EventType.FLOW_CHANGE
                            event.new_pc           = next_pc
                    case "beqz":
                        # beqz rs, imm  →  beq zero, rs, imm
                        rs  = operands[0].reg - 1
                        imm = operands[1].imm
                        if self.regs.read(rs) == 0:
                            next_pc = pc + imm
                            event.event_t = EventType.FLOW_CHANGE
                            event.new_pc  = next_pc

                    case "bnez":
                        # bnez rs, imm →  bne zero, rs, imm
                        rs  = operands[0].reg - 1
                        imm = operands[1].imm
                        if self.regs.read(rs) != 0:
                            next_pc = pc + imm
                            event.event_t = EventType.FLOW_CHANGE
                            event.new_pc  = next_pc
                    case "bgtz":
                        # bgtz rs, imm →  bgt zero, rs, imm
                        rs  = operands[0].reg - 1
                        imm = operands[1].imm
                        if self.regs.read(rs) > 0:
                            next_pc = pc + imm
                            event.event_t = EventType.FLOW_CHANGE
                            event.new_pc  = next_pc
                    case "bltz":
                        # bltz rs, imm →  blt zero, rs, imm
                        rs  = operands[0].reg - 1
                        imm = operands[1].imm
                        if self.regs.read(rs) < 0:
                            next_pc = pc + imm
                            event.event_t = EventType.FLOW_CHANGE
                            event.new_pc  = next_pc
                    case "bgez":
                        # bgez rs, imm →  bge zero, rs, imm
                        rs  = operands[0].reg - 1
                        imm = operands[1].imm
                        if self.regs.read(rs) >= 0:
                            next_pc = pc + imm
                            event.event_t = EventType.FLOW_CHANGE
                            event.new_pc  = next_pc
                    case "blez":
                        # blez rs, imm →  bge zero, rs, imm
                        rs  = operands[0].reg - 1
                        imm = operands[1].imm
                        if self.regs.read(rs) <= 0:
                            next_pc = pc + imm
                            event.event_t = EventType.FLOW_CHANGE
                            event.new_pc  = next_pc
                    case "not":
                        # not rd, rs → xori rd, rs, -1
                        rd, rs = (o.reg-1 for o in operands)
                        val     = (~self.regs.read(rs)) & 0xFFFFFFFF
                        self.regs.write(rd, val)
                        event.event_t     = EventType.REGISTER_WRITE
                        event.reg_changed = rd
                        event.reg_val     = val

                    case "li":
                        # li rd, imm  →  load immediate
                        rd_str, imm_str = [s.strip() for s in op_str.split(",")]
                        rd  = int(rd_str.replace("x",""), 0)
                        imm = int(imm_str, 0)
                        self.regs.write(rd, imm)
                        event.event_t     = EventType.REGISTER_WRITE
                        event.reg_changed = rd
                        event.reg_val     = imm

                    case "j":
                        # j imm       →  jal x0, imm
                        imm = operands[0].imm
                        next_pc = pc + imm
                        event.event_t = EventType.FLOW_CHANGE
                        event.new_pc  = next_pc

                    # --- Jumps ---
                    case "jal":
                        rd = operands[0].imm
                        self.regs.write(1, pc + 4)
                        next_pc                = pc + rd
                        event.event_t       = EventType.FLOW_CHANGE
                        event.new_pc           = next_pc

                    case "jalr":
                        rd   = operands[0].reg - 1
                        base = operands[1].reg - 1
                        imm  = operands[1].imm
                        ret  = pc + 4
                        tgt  = (self.regs.read(base) + imm) & ~1
                        self.regs.write(rd, ret)
                        next_pc                = tgt
                        event.event_t       = EventType.FLOW_CHANGE
                        event.reg_changed = rd
                        event.reg_val   = ret
                        event.new_pc           = tgt
                    case "jr":
                        rd = operands[0].reg - 1
                        next_pc = self.regs.read(rd)
                        event.event_t       = EventType.FLOW_CHANGE
                        event.new_pc           = next_pc
                    case "ret":
                        next_pc = self.regs.read(1)  # x1 is ra
                        event.event_t       = EventType.FLOW_CHANGE
                        event.new_pc           = next_pc
                    case "call":
                        # call imm    →  jal ra, imm
                        imm = operands[0].imm
                        ret = pc + 4
                        self.regs.write(1, ret)           # x1 is ra
                        event.event_t     = EventType.REGISTER_WRITE
                        event.reg_changed = 1
                        event.reg_val     = ret
                        next_pc = pc + imm
                        event.event_t     = EventType.FLOW_CHANGE
                        event.new_pc      = next_pc
                    # --- Upper immediates ---
                    case "lui":
                        rd  = operands[0].reg - 1
                        val = operands[1].imm << 12
                        self.regs.write(rd, val)
                        event.event_t       = EventType.REGISTER_WRITE
                        event.reg_changed = rd
                        event.reg_val   = val

                    case "auipc":
                        rd  = operands[0].reg - 1
                        val = pc + (operands[1].imm << 12)
                        self.regs.write(rd, val)
                        event.event_t       = EventType.REGISTER_WRITE
                        event.reg_changed = rd
                        event.reg_val   = val

                    case _:
                        print(f"Unknown @ {pc:08X}: {mnemonic} {op_str}")

                if event.event_t is EventType.NOP:
                    event.new_pc = next_pc
                event.status = Status(1,1,1,1,1,1)
                if(steps>0):
                    global_log.write_log_file(",\n")
                global_log.write_log_file(f"\t{event.to_json()}")
                pc    = next_pc

        except Exception as e:
            print(f"\033[1;31mStopped after {steps} steps on {instr_dissasembly}: {e}\033[0m")
            traceback.print_exc()
            return e
            # raise e
        return None