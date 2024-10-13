def convert_binary_to_hex(file_path):
    hex_output = ""
    
    # Open the font.txt file for reading
    with open(file_path, 'r') as f_in:
        for line in f_in:
            # Strip any whitespace characters
            line = line.strip()
            # Ignore empty lines or lines starting with comments
            if not line or line.startswith('--'):
                continue
            # Extract the binary string part from the line
            if '"' in line:
                binary_str = line.split('"')[1]
                # Convert the binary string to hexadecimal
                hex_str = hex(int(binary_str, 2))[2:].zfill(2).upper()
                # Append the hex string to the output
                hex_output += hex_str

    # Add underscores every 32 hex characters (128 bits)
    hex_output_with_underscores = '_'.join(hex_output[i:i+32] for i in range(0, len(hex_output), 32))

    # Write the result to font.hex
    with open('font.hex', 'w') as f_out:
        f_out.write(hex_output_with_underscores)

if __name__ == "__main__":
    convert_binary_to_hex('font.txt')
    print("Conversion completed! The output is saved in 'font.hex'.")
