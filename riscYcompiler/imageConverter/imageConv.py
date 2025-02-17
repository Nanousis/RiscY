from PIL import Image

def image_to_hex(image_path):
    # Open the image and ensure it's 8x16
    img = Image.open(image_path).convert('1')  # Convert to black and white
    img = img.resize((8, 16))  # Ensure the image is 8x16

    hex_values = []

    for y in range(16):
        byte = 0
        for x in range(8):
            pixel = img.getpixel((x, y))
            # If pixel is white, set the corresponding bit to 1
            bit = 1 if pixel == 255 else 0
            byte = (byte << 1) | bit
        hex_values.append(f"{byte:02X}")

    return hex_values

# Prompt the user for the image filename
image_path = input("Enter the image filename (with extension): ")
hex_codes = image_to_hex(image_path)

# Print the hex code in 8x16 format
for i in range(0, len(hex_codes), 8):
    print(" ".join(hex_codes[i:i+8]))
