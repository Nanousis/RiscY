import argparse
import os
import json
from pathlib import Path
from capstone import CS_ARCH_RISCV, CS_MODE_RISCV32, Cs
md = Cs(CS_ARCH_RISCV, CS_MODE_RISCV32)

def decode(inst_word, PC):
    for insn in md.disasm(inst_word.to_bytes(4, 'little'), PC):
        return insn.mnemonic, insn.op_str

def print_error(message):
    print(f"\033[1;31m{message}\033[0m")
def main():
    import argparse
    parser = argparse.ArgumentParser(description="Generate a visualization from a pipeline log file.")
    parser.add_argument("cpu_log", type=Path, help="Path to the CPU log file (JSON format)")
    parser.add_argument("emulator_log", type=Path, help="Path to the emulator log file (HTML format)")
    args = parser.parse_args()

    cpu_events = None
    emulator_events = None
    print(f"Comparing CPU log: {args.cpu_log} with Emulator log: {args.emulator_log}")
    print("Reading CPU log")
    # --- load your JSON array of events ---
    with open(args.cpu_log, "r") as f:
        cpu_events = json.load(f)
    print("Reading Emulator log")
    with open(args.emulator_log, "r") as f:
        emulator_events = json.load(f)

    smallest_length = min(len(cpu_events), len(emulator_events))
    for i in range(smallest_length):
        emulator_pc = emulator_events[i].get("pc", 0)
        cpu_pc = cpu_events[i].get("pc", 0)
        cpu_event_t = cpu_events[i].get("event_t", "unknown")
        emulator_event_t = emulator_events[i].get("event_t", "unknown")
        if((cpu_event_t != "REGISTER_WRITE" and emulator_event_t != "FLOW_CHANGE")):
            if(cpu_event_t != emulator_event_t ):
                print_error(f"Event type mismatch at index {i}: CPU = {cpu_event_t} Emulator = {emulator_event_t}")
            if(cpu_event_t == "REGISTER_WRITE"):
                cpu_reg = cpu_events[i].get("reg_changed", -1)
                emulator_reg = emulator_events[i].get("reg_changed", -1)
                if cpu_reg != emulator_reg:
                    print_error(f"Register mismatch at index {i}: CPU = {cpu_reg} Emulator = {emulator_reg}")
                cpu_reg_data = cpu_events[i].get("reg_val", -1)
                emulator_reg_data = emulator_events[i].get("reg_val", -1)
                if cpu_reg_data != emulator_reg_data:
                    print_error(f"Register mismatch at index {i}: CPU = {cpu_reg_data} Emulator = {emulator_reg_data}")
            if(cpu_event_t == "MEMORY_WRITE"):
                cpu_addr = cpu_events[i].get("mem_addr", -1)
                emulator_addr = emulator_events[i].get("mem_addr", -1)
                if cpu_addr != emulator_addr:
                    print_error(f"Memory address mismatch at index {i}: CPU = 0x{cpu_addr:08x} Emulator = 0x{emulator_addr:08x}")
                # cpu_data = cpu_events[i].get("mem_val", -1)
                # emulator_data = emulator_events[i].get("mem_val", -1)
                # if cpu_data != emulator_data:
                #     print_error(f"Memory data mismatch at index {i}: CPU = 0x{cpu_data:08x} Emulator = 0x{emulator_data:08x}")
        if(cpu_events[i].get("instr") != emulator_events[i].get("instr") or  cpu_pc != emulator_pc):
            cpu_mnemonic, cpu_op_str = decode(cpu_events[i].get("instr"), cpu_pc)
            cpu_dissas = f"{cpu_mnemonic} {cpu_op_str}"
            emulator_mnemonic, emulator_op_str = decode(emulator_events[i].get("instr"), emulator_pc)
            emulator_dissas = f"{emulator_mnemonic} {emulator_op_str}"
            print_error(f"\033[1;31mInstruction mismatch at index {i}: CPU = {cpu_dissas} Emulator = {emulator_dissas} PC = 0x{cpu_pc:08x} Emulator PC = 0x{emulator_pc:08x}\033[0m")
            for j in range(max(0, i-20), i):
                cpu_prev_instr = cpu_events[j].get("instr")
                cpu_prev_pc = cpu_events[j].get("pc", 0)
                cpu_prev_mnemonic, cpu_prev_op_str = decode(cpu_prev_instr, cpu_prev_pc)
                cpu_prev_dissas = f"{cpu_prev_mnemonic} {cpu_prev_op_str}"
                emulator_prev_instr = emulator_events[j].get("instr")
                emulator_prev_pc = emulator_events[j].get("pc", 0)
                emulator_prev_mnemonic, emulator_prev_op_str = decode(emulator_prev_instr, emulator_prev_pc)
                emulator_prev_dissas = f"{emulator_prev_mnemonic} {emulator_prev_op_str}"
                cpu_prev_reg_data = cpu_events[j].get("reg_val", -1)
                emulator_prev_reg_data = emulator_events[j].get("reg_val", -1)
                print(f"{j}: Prev {i-j}: CPU = {cpu_prev_dissas} (PC=0x{cpu_prev_pc:08x}) | Emulator = {emulator_prev_dissas} (PC=0x{emulator_prev_pc:08x}) register = {cpu_prev_reg_data} vs {emulator_prev_reg_data}")
            print(f"CPU Event: {cpu_events[i]}")
            print(f"Emulator Event: {emulator_events[i]}")
            break

if __name__ == "__main__":
    main()