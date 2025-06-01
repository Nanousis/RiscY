import struct
import sys

ELF_MAGIC = b'\x7fELF'

def read_elf32_header(data):
    header_fmt = "<16sHHIIIIIHHHHHH"
    header = struct.unpack_from(header_fmt, data, 0)
    return {
        'e_ident': header[0],
        'e_type': header[1],
        'e_machine': header[2],
        'e_version': header[3],
        'e_entry': header[4],
        'e_phoff': header[5],
        'e_shoff': header[6],
        'e_flags': header[7],
        'e_ehsize': header[8],
        'e_phentsize': header[9],
        'e_phnum': header[10],
        'e_shentsize': header[11],
        'e_shnum': header[12],
        'e_shstrndx': header[13],
    }

def read_program_headers(data, phoff, phentsize, phnum):
    phdrs = []
    for i in range(phnum):
        offset = phoff + i * phentsize
        ph_fmt = "<IIIIIIII"
        fields = struct.unpack_from(ph_fmt, data, offset)
        phdrs.append({
            'p_type': fields[0],
            'p_offset': fields[1],
            'p_vaddr': fields[2],
            'p_paddr': fields[3],
            'p_filesz': fields[4],
            'p_memsz': fields[5],
            'p_flags': fields[6],
            'p_align': fields[7],
        })
    return phdrs

def main():
    if len(sys.argv) != 2:
        print("Usage: python3 elf_reader.py <filename.elf>")
        return

    filename = sys.argv[1]
    with open(filename, "rb") as f:
        data = f.read()

    if not data.startswith(ELF_MAGIC):
        print("Not an ELF file")
        return

    elf = read_elf32_header(data)

    print("=== ELF Header ===")
    for k, v in elf.items():
        if isinstance(v, bytes):
            print(f"{k}: {v}")
        else:
            print(f"{k}: 0x{v:08x}")

    print("\n=== Program Headers ===")
    phdrs = read_program_headers(data, elf['e_phoff'], elf['e_phentsize'], elf['e_phnum'])
    for i, ph in enumerate(phdrs):
        print(f"\nProgram Header {i}:")
        for k, v in ph.items():
            print(f"  {k}: 0x{v:08x}")

if __name__ == "__main__":
    main()
