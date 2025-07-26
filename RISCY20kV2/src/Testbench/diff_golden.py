import sys

def extract_instruction(line):
    """
    Extracts the address and instruction part from a trace line:
    PC[12301]: 1076706000 -> 0x80000000 -> auipc sp, 8
    Returns: ('0x80000000', 'auipc sp, 8')
    """
    parts = line.strip().split("->")
    if len(parts) < 3:
        return None  # invalid line
    addr = parts[1].strip()
    instr = parts[2].strip()
    return (addr, instr)

def find_first_deviation(file1, file2):
    with open(file1) as f1, open(file2) as f2:
        for lineno, (l1, l2) in enumerate(zip(f1, f2), 1):
            instr1 = extract_instruction(l1)
            instr2 = extract_instruction(l2)
            if instr1 != instr2:
                print(f"Mismatch at line {lineno}:")
                print(f"File1: {l1.strip()}")
                print(f"File2: {l2.strip()}")
                return
        print("No mismatch found (files match up to the shorter one).")

if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Usage: python find_trace_mismatch.py file1.txt file2.txt")
        sys.exit(1)

    find_first_deviation(sys.argv[1], sys.argv[2])
