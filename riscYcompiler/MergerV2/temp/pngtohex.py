import sys
from PIL import Image
import os

def rgb888_to_rgb565(r, g, b):
    """Convert 8-bit RGB to 16-bit RGB565 format"""
    return ((r & 0xF8) << 8) | ((g & 0xFC) << 3) | (b >> 3)

def convert_png_to_rgb565_bin(png_path):
    try:
        img = Image.open(png_path).convert('RGB')  # Drop alpha if present
        width, height = img.size
        pixels = list(img.getdata())

        base_name = os.path.splitext(os.path.basename(png_path))[0]
        output_file = f"{base_name}_rgb565.bin"

        with open(output_file, 'wb') as f:
            f.write(width.to_bytes(4, byteorder='little'))
            f.write(height.to_bytes(4, byteorder='little'))
            for y in range(height):
                for x in range(width):
                    r, g, b = pixels[y * width + x]
                    rgb565 = rgb888_to_rgb565(r, g, b)
                    f.write(rgb565.to_bytes(2, byteorder='little'))  # or 'big'

        print(f"✅ Converted {png_path} ({width}x{height}) -> {output_file} (binary)")
    except Exception as e:
        print(f"❌ Error: {e}")

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python png_to_rgb565_bin.py <image.png>")
        sys.exit(1)

    convert_png_to_rgb565_bin(sys.argv[1])
