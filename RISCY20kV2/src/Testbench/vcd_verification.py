from vcdvcd import VCDVCD
from capstone import *
from tqdm import tqdm

def get_signal_at_time(tv_list, target_time):
    last_value = None
    for t, val in tv_list:
        if t > target_time:
            break
        last_value = val
    return last_value

def read_instructions(filename):
    instructions = []
    with open(filename, 'r') as f:
        for line in f:
            line = line.strip()
            if line:
                instr = int(line, 16)  # Convert hex string to integer
                instructions.append(instr)
    return instructions


# Create Capstone disassembler for RV32I
md = Cs(CS_ARCH_RISCV, CS_MODE_RISCV32)

print("Reading VCD file...\n")
vcd = VCDVCD("ZSOC.vcd")

# Load VCD signals
pc = vcd["test.TOP.cpu_1.EXMEM_PC[31:0]"]
instruction = vcd["test.TOP.cpu_1.EXMEM_instr[31:0]"]

print("Reading instructions from file...\n")
instr_array = read_instructions("../includes/RAM.hex")

output_file = open("output/output.run", "w")
error_file = open("output/output.error", "w")

enabled = False
errors = 0;
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
        if(pc_value < 0x80000000 or pc_value >= 0x88000000):
            errors += 1
            error_file.write(f"ERROR PC[{i}]: {pc.tv[i][0]} -> {pc_hex} -> {instr_hex} (out of range)\n")
            continue
        asm_str = ""
        instr_bytes = instr_value.to_bytes(4, byteorder='little')
        for ins in md.disasm(instr_bytes, pc_value):
            asm_str = f"{ins.mnemonic} {ins.op_str}"

        from_mem_asm_str = ""
        mem_instr = instr_array[(pc_value - 0x80000000)>>2]
        mem_instr_bytes = mem_instr.to_bytes(4, byteorder='little')
        for ins in md.disasm(mem_instr_bytes, pc_value):
            from_mem_asm_str = f"{ins.mnemonic} {ins.op_str}"
        if asm_str != from_mem_asm_str:
            error_file.write(f"ERROR PC[{i}]: {pc.tv[i][0]} -> {pc_hex} -> {asm_str} (from memory: {from_mem_asm_str})\n")
            # print(f"ERRORRRRRRRRRRR PC[{i}]: {pc.tv[i][0]} -> {pc_hex} -> {asm_str} (from memory: {from_mem_asm_str})")
            errors += 1
        output_file.write(f"PC[{i}]: {pc.tv[i][0]} -> {pc_hex} -> {asm_str}\n")
        # print(f"PC[{i}]: {pc.tv[i][0]} -> {pc_hex} -> {asm_str} (from memory: {from_mem_asm_str})")
if(errors > 0):
    print(f"\033[91mNumber of errors: {errors}\033[0m")
else:
    print("\033[92mNo errors found!\033[0m")
output_file.close()
error_file.close()
