from vcdvcd import VCDVCD
from capstone import *
from tqdm import tqdm
import argparse
def read_instructions(filename):
    instructions = []
    with open(filename, 'r') as f:
        for line in f:
            line = line.strip()
            if line:
                instr = int(line, 16)  # Convert hex string to integer
                instructions.append(instr)
    return instructions

def main():
    parser = argparse.ArgumentParser(description="RISCY emulator.")
    parser.add_argument("program", type=str, help="Path to mem file")
    parser.add_argument("--limit", type=int, help="Limit the number of instructions")
    args = parser.parse_args()
    instructions = read_instructions(args.program)


if(__name__ == "__main__"):
    main()