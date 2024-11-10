import sys
from PIL import Image

def image_to_2bit_hex_lsb(image, start_x, start_y):
    hex_values = []

    # Process each 8x16 block starting at (start_x, start_y)
    for y in range(start_y, start_y + 16):
        byte = 0
        for chunk_start in range(start_x, start_x + 8, 4):  # Process in 4-pixel chunks
            byte = 0
            for x in range(chunk_start, chunk_start + 4):
                pixel = image.getpixel((x, y))

                # Determine the 2-bit value based on the grayscale intensity
                if pixel < 64:
                    bit_value = 0  # Black
                elif pixel < 128:
                    bit_value = 1  # Dark gray
                elif pixel < 192:
                    bit_value = 2  # Light gray
                else:
                    bit_value = 3  # White

                # Shift the 2-bit value into the correct position for LSB-first order
                byte |= (bit_value << (2 * (x - chunk_start)))  # Shift within the 4-pixel chunk

            # Append the byte as a 2-character hex string
            hex_values.append(f"{byte:02X}")

    return hex_values

def process_image(image_path, output_filename):
    # Open the image and convert to grayscale
    img = Image.open(image_path).convert('L')
    width, height = img.size

    with open(output_filename, 'w') as file:
        # Iterate over 8x16 blocks within the image
        for start_y in range(0, height, 16):
            for start_x in range(0, width, 8):
                # Get the hex values for the current 8x16 block
                hex_codes = image_to_2bit_hex_lsb(img, start_x, start_y)

                # Write the hex codes for the current block to the file
                for i in range(0, len(hex_codes), 2):
                    file.write(" ".join(hex_codes[i:i+2]) + "\n")
                
                # Add a blank line between blocks for readability
                file.write("\n")

    print(f"Hex codes for {width // 8}x{height // 16} blocks written to {output_filename}")

# Check for command-line arguments
if len(sys.argv) < 3:
    print("Usage: python script.py <image_filename> <output_filename>")
    sys.exit(1)

image_path = sys.argv[1]
output_filename = sys.argv[2]
process_image(image_path, output_filename)
