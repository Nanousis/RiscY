import sys
import os
import struct

def main():
    # Get the list of program file names from command line arguments
    program_files = sys.argv[1:]

    if not program_files:
        print("Usage: python merge_programs.py program1 program2 ...")
        sys.exit(1)

    num_programs = len(program_files)
    per_header_size = 24 + 4 + 4  # Name (24 bytes) + starting address (4 bytes) + end address (4 bytes)
    header_size = 4 + num_programs * per_header_size  # Number of programs (4 bytes) + per-program headers

    # Get sizes of all program files
    file_sizes = []
    for filename in program_files:
        try:
            size = os.path.getsize(filename)
            file_sizes.append(size)
        except OSError as e:
            print(f"Error accessing file {filename}: {e}")
            sys.exit(1)

    # Compute starting and ending addresses for each program
    starting_addresses = []
    ending_addresses = []
    current_address = header_size
    for size in file_sizes:
        starting_addresses.append(current_address)
        ending_addresses.append(current_address + size)
        current_address += size

    # Open the output file in binary write mode
    with open('merged_programs.bin', 'wb') as outfile:
        # Write the number of programs (4 bytes, little-endian)
        outfile.write(struct.pack('<I', num_programs))

        # Write headers for each program
        for i, filename in enumerate(program_files):
            # Extract the base name of the file
            name = os.path.basename(filename)
            name_bytes = name.encode('utf-8')

            # Truncate or pad the name to 24 bytes
            name_bytes = name_bytes[:24]
            name_bytes = name_bytes.ljust(24, b'\x00')  # Pad with null bytes if necessary
            outfile.write(name_bytes)

            # Write the starting address (4 bytes, little-endian)
            outfile.write(struct.pack('<I', starting_addresses[i]))

            # Write the ending address (4 bytes, little-endian)
            outfile.write(struct.pack('<I', ending_addresses[i]))

        # Write the content of all program files
        for filename in program_files:
            with open(filename, 'rb') as infile:
                while True:
                    data = infile.read(4096)  # Read in chunks of 4096 bytes
                    if not data:
                        break
                    outfile.write(data)

if __name__ == '__main__':
    main()
