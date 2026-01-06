import sys
from PIL import Image
import os

TARGET_W = 800
TARGET_H = 480

def rgb888_to_rgb565(r, g, b):
    """Convert 8-bit RGB to 16-bit RGB565 format"""
    return ((r & 0xF8) << 8) | ((g & 0xFC) << 3) | (b >> 3)

def resize_to_800x480_letterbox(img, fill=(0, 0, 0)):
    """
    Resize to 800x480 while preserving aspect ratio using letterboxing.
    Pads with `fill` color to exactly 800x480.
    """
    img = img.convert("RGB")

    src_w, src_h = img.size
    scale = min(TARGET_W / src_w, TARGET_H / src_h)
    new_w = int(round(src_w * scale))
    new_h = int(round(src_h * scale))

    resized = img.resize((new_w, new_h), resample=Image.LANCZOS)

    canvas = Image.new("RGB", (TARGET_W, TARGET_H), fill)
    offset_x = (TARGET_W - new_w) // 2
    offset_y = (TARGET_H - new_h) // 2
    canvas.paste(resized, (offset_x, offset_y))
    return canvas

def convert_png_to_rgb565_bin(png_path):
    try:
        img = Image.open(png_path)

        # Option A (recommended): preserve aspect ratio + pad to 800x480
        img = resize_to_800x480_letterbox(img, fill=(0, 0, 0))

        # Option B (stretch to fit, may distort):
        # img = img.convert("RGB").resize((TARGET_W, TARGET_H), resample=Image.LANCZOS)

        width, height = img.size  # will be 800x480
        pixels = list(img.getdata())

        base_name = os.path.splitext(os.path.basename(png_path))[0]
        output_file = f"{base_name}_rgb565_{TARGET_W}x{TARGET_H}.bin"

        with open(output_file, 'wb') as f:
            f.write(TARGET_W.to_bytes(4, byteorder='little'))
            f.write(TARGET_H.to_bytes(4, byteorder='little'))
            for y in range(TARGET_H):
                row_off = y * TARGET_W
                for x in range(TARGET_W):
                    r, g, b = pixels[row_off + x]
                    rgb565 = rgb888_to_rgb565(r, g, b)
                    f.write(rgb565.to_bytes(2, byteorder='little'))

        print(f"Converted {png_path} -> {output_file} (forced {TARGET_W}x{TARGET_H}, RGB565)")
    except Exception as e:
        print(f"Error: {e}")

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python png_to_rgb565_bin.py <image.png>")
        sys.exit(1)

    convert_png_to_rgb565_bin(sys.argv[1])
