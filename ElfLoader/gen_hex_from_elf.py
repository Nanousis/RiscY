import argparse
import os
import subprocess
from elftools.elf.elffile import ELFFile

MEMORY_SIZE = 49152
RAM_BASE = 0x80000000  # Adjust based on where your RAM starts

def elf_to_hex_and_disasm(elf_path, hex_path, disasm_path):
    # Load ELF and simulate memory
    with open(elf_path, "rb") as f:
        elf = ELFFile(f)
        memory = bytearray(MEMORY_SIZE)  # Step 1: clear RAM (zeros)

        print("🔧 Loading PT_LOAD segments...")
        for segment in elf.iter_segments():
            if segment['p_type'] != 'PT_LOAD':
                continue
            vaddr = segment['p_vaddr']
            offset = segment['p_offset']
            size = segment['p_filesz']

            mem_offset = vaddr - RAM_BASE
            if mem_offset < 0 or mem_offset + size > MEMORY_SIZE:
                raise ValueError(f"Segment out of bounds: vaddr={vaddr:#x}")

            print(f"  ➤ Copying segment to RAM @ {vaddr:#08x} (size={size}B)")
            memory[mem_offset:mem_offset+size] = segment.data()

        print("🔧 Clearing .bss sections...")
        for section in elf.iter_sections():
            if section['sh_type'] == 'SHT_NOBITS':  # .bss
                vaddr = section['sh_addr']
                size = section['sh_size']
                mem_offset = vaddr - RAM_BASE
                if mem_offset < 0 or mem_offset + size > MEMORY_SIZE:
                    raise ValueError(f".bss out of bounds: addr={vaddr:#x}")

                print(f"  ➤ Clearing BSS @ {vaddr:#08x} (size={size}B)")
                memory[mem_offset:mem_offset+size] = b'\x00' * size

        print("📝 Writing hex file...")
        with open(hex_path, "w") as hex_file:
            for i in range(0, MEMORY_SIZE, 4):
                word = memory[i:i+4]
                hex_file.write(f"{int.from_bytes(word, 'little'):08x}\n")

        print(f"✅ Hex file written to: {hex_path}")

    # Disassembly
    print("🛠 Generating disassembly...")
    with open(disasm_path, "w") as disasm_file:
        subprocess.run(["riscv64-unknown-elf-objdump", "-dS", elf_path], check=True, stdout=disasm_file)
    print(f"✅ Disassembly written to: {disasm_path}")

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Simulate elfLoader: Convert ELF to HEX + Disassembly")
    parser.add_argument("elf", help="Input ELF file path")
    parser.add_argument("hex", help="Output HEX file path")
    parser.add_argument("--disasm", help="Disassembly output path (default: <elf>.disasm)")
    args = parser.parse_args()

    disasm_path = args.disasm or os.path.splitext(os.path.basename(args.elf))[0] + ".disasm"
    elf_to_hex_and_disasm(args.elf, args.hex, disasm_path)
