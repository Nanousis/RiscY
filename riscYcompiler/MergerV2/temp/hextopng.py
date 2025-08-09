import sys
from PIL import Image
import os

def rgb565_to_rgb888(rgb565):
    """Convert 16-bit RGB565 to 8-bit RGB888"""
    r = (rgb565 >> 11) & 0x1F
    g = (rgb565 >> 5) & 0x3F
    b = rgb565 & 0x1F
    return (
        (r << 3) | (r >> 2),
        (g << 2) | (g >> 4),
        (b << 3) | (b >> 2),
    )

def convert_txt_to_png(txt_path, width, height):
    try:
        with open(txt_path, 'r') as f:
            hex_string = f.read().strip()

        # Expecting 4 hex digits per pixel (e.g., AAAA1111BBBB2222)
        num_pixels = width * height
        if len(hex_string) < num_pixels * 4:
            raise ValueError("Text file too short for given image dimensions")

        pixels = []
        i = 0
        while i < len(hex_string):
            # Read 32 bits (2 pixels = 4 hex + 4 hex = 8 hex digits)
            word = hex_string[i:i+8]
            if len(word) < 8:
                # Last odd pixel case
                rgb565 = int(word, 16)
                pixels.append(rgb565_to_rgb888(rgb565))
                break

            # Swap back to original order (from: pix1, pix0)
            rgb1 = int(word[0:4], 16)
            rgb0 = int(word[4:8], 16)
            pixels.append(rgb0_to_rgb := rgb565_to_rgb888(rgb0))
            pixels.append(rgb1_to_rgb := rgb565_to_rgb888(rgb1))

            i += 8

        if len(pixels) != num_pixels:
            raise ValueError(f"Expected {num_pixels} pixels, got {len(pixels)}")

        img = Image.new("RGB", (width, height))
        img.putdata(pixels)

        output_file = os.path.splitext(txt_path)[0] + "_restored.png"
        img.save(output_file)
        print(f"✅ Restored image saved as: {output_file}")

    except Exception as e:
        print(f"❌ Error: {e}")

if __name__ == "__main__":
    if len(sys.argv) != 4:
        print("Usage: python rgb565_to_png.py <input.txt> <width> <height>")
        sys.exit(1)

    txt_path = sys.argv[1]
    width = int(sys.argv[2])
    height = int(sys.argv[3])

    convert_txt_to_png(txt_path, width, height)
