import argparse
from vcdvcd import VCDVCD
from capstone import *
from tqdm import tqdm
import os

def get_signal_at_time(tv_list, target_time):
    left, right = 0, len(tv_list) - 1
    result = None
    while left <= right:
        mid = (left + right) // 2
        t, val = tv_list[mid]
        if t == target_time:
            return val
        elif t < target_time:
            result = val
            left = mid + 1
        else:
            right = mid - 1
    return result

def read_instructions(filename):
    instructions = []
    with open(filename, 'r') as f:
        for line in f:
            line = line.strip()
            if line:
                instr = int(line, 16)
                instructions.append(instr)
    return instructions

def main(vcd_path, ram_file):
    md = Cs(CS_ARCH_RISCV, CS_MODE_RISCV32)

    print("Reading VCD file...\n")
    vcd = VCDVCD(vcd_path)

    pc = vcd["test.TOP.cpu_1.EXMEM_PC[31:0]"]
    instruction = vcd["test.TOP.cpu_1.EXMEM_instr[31:0]"]

    print("Reading instructions from file...\n")
    instr_array = read_instructions(ram_file)

    base_name = os.path.splitext(os.path.basename(vcd_path))[0]  # "ZSOC" from "path/to/ZSOC.vcd"
    run_path = f"output/{base_name}.run"
    err_path = f"output/{base_name}.err"

    output_file = open(run_path, "w")
    error_file = open(err_path, "w")


    enabled = False
    errors = 0
    previous_pc = 0

    for i in tqdm(range(len(pc.tv))):
        pc_bin = pc.tv[i][1]
        instr = get_signal_at_time(instruction.tv, pc.tv[i][0])
        instr_bin = instr

        if "x" in pc_bin or "x" in instr_bin:
            print(f"PC[{i}]: {pc.tv[i][0]} -> {pc_bin} -> x")
            continue

        pc_value = int(pc_bin, 2)
        instr_value = int(instr_bin, 2) if instr_bin else None
        pc_hex = hex(pc_value)
        instr_hex = hex(instr_value) if instr_value is not None else "x"

        if 0x80000000 <= pc_value < 0x88000000:
            enabled = True

        if enabled and pc_value < 0xffffffff:
            if pc_value < 0x80000000 or pc_value >= 0x88000000:
                errors += 1
                error_file.write(f"ERROR PC[{i}]: {pc.tv[i][0]} -> {pc_hex} -> {instr_hex} (out of range)\n")
                continue
            if previous_pc == pc_value:
                errors += 1
                error_file.write(f"ERROR PC[{i}]: {pc.tv[i][0]} -> {pc_hex} -> {instr_hex} (duplicate PC)\n")
                continue

            previous_pc = pc_value
            asm_str = ""
            instr_bytes = instr_value.to_bytes(4, byteorder='little')
            for ins in md.disasm(instr_bytes, pc_value):
                asm_str = f"{ins.mnemonic} {ins.op_str}"

            from_mem_asm_str = ""
            mem_instr = instr_array[(pc_value - 0x80000000) >> 2]
            mem_instr_bytes = mem_instr.to_bytes(4, byteorder='little')
            for ins in md.disasm(mem_instr_bytes, pc_value):
                from_mem_asm_str = f"{ins.mnemonic} {ins.op_str}"

            if asm_str != from_mem_asm_str:
                error_file.write(f"ERROR PC[{i}]: {pc.tv[i][0]} -> {pc_hex} -> {asm_str} (from memory: {from_mem_asm_str})\n")
                errors += 1

            output_file.write(f"PC[{i}]: {pc.tv[i][0]} -> {pc_hex} -> {asm_str}\n")

    if errors > 0:
        print(f"\033[91mNumber of errors: {errors}\033[0m")
    else:
        print("\033[92mNo errors found!\033[0m")

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Compare VCD instructions to memory contents.")
    parser.add_argument("vcd_path", help="Path to VCD file")
    parser.add_argument("--ram", default="../includes/RAM.hex", help="Path to RAM.hex file (default: ../includes/RAM.hex)")
    args = parser.parse_args()
    main(args.vcd_path, args.ram)
