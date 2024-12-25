import sys
import os
import struct
from PIL import Image
from PyQt6.QtWidgets import (
    QApplication, QWidget, QVBoxLayout, QLabel, QPushButton, QListWidget, QListWidgetItem,
    QLineEdit, QMessageBox, QHBoxLayout
)
from PyQt6.QtCore import Qt
from PyQt6.QtGui import QPixmap, QDragEnterEvent, QDropEvent


class EditableItemWidget(QWidget):
    def __init__(self, file_path):
        super().__init__()
        self.file_path = file_path
        self.image_path = None  # Path to the selected image
        self.initUI()

    def initUI(self):
        layout = QHBoxLayout()
        layout.setContentsMargins(5, 5, 5, 5)

        # Label for file path (read-only)
        self.file_label = QLabel(os.path.basename(self.file_path))
        self.file_label.setFixedWidth(150)

        # Editable text box for program name
        self.name_edit = QLineEdit(os.path.basename(self.file_path))
        self.name_edit.setFixedWidth(150)

        # Image area for drag-and-drop
        self.image_label = QLabel("Drop Image Here")
        self.image_label.setFixedSize(32, 32)
        self.image_label.setStyleSheet("border: 1px solid black; text-align: center;")
        self.image_label.setAlignment(Qt.AlignmentFlag.AlignCenter)
        self.image_label.setAcceptDrops(True)
        self.image_label.dragEnterEvent = self.dragEnterEvent
        self.image_label.dropEvent = self.dropEvent

        layout.addWidget(self.file_label)
        layout.addWidget(self.name_edit)
        layout.addWidget(self.image_label)

        self.setLayout(layout)

    def dragEnterEvent(self, event: QDragEnterEvent):
        if event.mimeData().hasUrls():
            event.accept()
        else:
            event.ignore()

    def dropEvent(self, event: QDropEvent):
        if event.mimeData().hasUrls():
            for url in event.mimeData().urls():
                file_path = url.toLocalFile()
                pixmap = QPixmap(file_path)
                if pixmap.width() == 32 and pixmap.height() == 32:
                    self.image_path = file_path
                    self.image_label.setPixmap(pixmap)
                else:
                    QMessageBox.warning(self, "Error", "Image must be 32x32 pixels.")

    def get_program_name(self):
        return self.name_edit.text()

    def get_image_path(self):
        return self.image_path


class DragDropMergeGUI(QWidget):
    def __init__(self):
        super().__init__()
        self.initUI()

    def initUI(self):
        self.setWindowTitle("Drag and Drop File Merger with Images")
        self.setGeometry(100, 100, 800, 400)

        # Enable drag and drop
        self.setAcceptDrops(True)

        # Layout
        self.layout = QVBoxLayout()

        # Instructions label
        self.label = QLabel("Drag and drop program files here:")
        self.layout.addWidget(self.label)

        # List widget to display added files
        self.file_list_widget = QListWidget()
        self.layout.addWidget(self.file_list_widget)

        # Buttons for merging and removing programs
        self.button_layout = QHBoxLayout()

        self.remove_button = QPushButton("Remove Selected Program")
        self.remove_button.clicked.connect(self.remove_program)
        self.button_layout.addWidget(self.remove_button)

        self.merge_button = QPushButton("Merge Programs")
        self.merge_button.clicked.connect(self.merge_programs)
        self.button_layout.addWidget(self.merge_button)

        self.layout.addLayout(self.button_layout)
        self.setLayout(self.layout)

    def dragEnterEvent(self, event):
        if event.mimeData().hasUrls():
            event.accept()
        else:
            event.ignore()

    def dropEvent(self, event):
        if event.mimeData().hasUrls():
            for url in event.mimeData().urls():
                file_path = url.toLocalFile()
                if os.path.isfile(file_path):
                    # Add a custom widget for each file with editable name and image
                    item_widget = EditableItemWidget(file_path)
                    list_item = QListWidgetItem()
                    list_item.setSizeHint(item_widget.sizeHint())

                    self.file_list_widget.addItem(list_item)
                    self.file_list_widget.setItemWidget(list_item, item_widget)

    def remove_program(self):
        selected_item = self.file_list_widget.currentItem()
        if selected_item:
            row = self.file_list_widget.row(selected_item)
            self.file_list_widget.takeItem(row)
        else:
            QMessageBox.warning(self, "Error", "No program selected for removal.")

    def merge_programs(self):
        program_files = []
        program_names = []
        image_files = []

        for i in range(self.file_list_widget.count()):
            item_widget = self.file_list_widget.itemWidget(self.file_list_widget.item(i))
            program_files.append(item_widget.file_path)
            program_names.append(item_widget.get_program_name())
            image_path = item_widget.get_image_path()
            if not image_path:
                image_path = "default.png"
                if not os.path.exists(image_path):
                    QMessageBox.critical(
                        self, "Error", f"No image selected for program '{program_names[i]}' and 'default.png' is missing."
                    )
                    return
            image_files.append(image_path)
        if not program_files:
            QMessageBox.warning(self, "Error", "No program files selected.")
            return

        # Ensure every program has an associated image
        for idx, image in enumerate(image_files):
            if not image:
                QMessageBox.warning(self, "Error", f"No image selected for program '{program_names[idx]}'.")
                return

        # Set output path for merged file
        merged_file = "merged_programs.bin"

        try:
            merge_programs(program_files, merged_file, program_names, image_files)
            # Then, convert the merged binary file to bits with metadata
            output_file = 'output.fs'
            binary_file_to_bits(merged_file, output_file)
            QMessageBox.information(self, "Success", f"Programs merged into {merged_file}")
            
        except Exception as e:
            QMessageBox.critical(self, "Error", f"Failed to merge programs: {e}")


def image_to_2bit_hex_lsb(image, start_x, start_y):
    hex_values = []
    for y in range(start_y, start_y + 16):
        for chunk_start in range(start_x, start_x + 8, 4):
            byte = 0
            for x in range(chunk_start, chunk_start + 4):
                pixel = image.getpixel((x, y))
                if pixel < 64:
                    bit_value = 0
                elif pixel < 128:
                    bit_value = 1
                elif pixel < 192:
                    bit_value = 2
                else:
                    bit_value = 3
                byte |= (bit_value << (2 * (x - chunk_start)))
            hex_values.append(byte)
    return hex_values


def process_image_to_2bit(image_path):
    img = Image.open(image_path).convert('L')
    width, height = img.size

    # Ensure the image is 32x32
    if width != 32 or height != 32:
        raise ValueError(f"Image {image_path} must be 32x32 pixels.")

    hex_values = []

    # Process 8x16 blocks
    for start_y in range(0, 32, 16):  # Rows: 0-15, 16-31
        for start_x in range(0, 32, 8):  # Columns: 0-7, 8-15, 16-23, 24-31
            hex_values.extend(image_to_2bit_hex_lsb(img, start_x, start_y))

    return hex_values


def merge_programs(program_files, output_file, program_names, image_files):
    num_programs = len(program_files)

    file_sizes = []
    for filename in program_files:
        try:
            size = os.path.getsize(filename)
            file_sizes.append(size)
        except OSError as e:
            raise RuntimeError(f"Error accessing file {filename}: {e}")

    starting_addresses = []
    ending_addresses = []
    num_programs = len(program_files)

    # Initial header size
    header_size = 8 + 1  # "RISCY.FS" (8 bytes) + number of programs (1 byte)

    # Compute the size of each program's entry in the header (name, addresses, and image data)
    header_entries_size = sum((len(name.encode('utf-8')) + 1 + 4 + 4 + 256) for name in program_names)

    # Start writing file content after the full header
    current_address = header_size + header_entries_size

    with open(output_file, 'wb') as outfile:
        outfile.write(b'RISCY.FS')
        outfile.write(struct.pack('<B', num_programs))

        for i, filename in enumerate(program_files):
            name_bytes = program_names[i].encode('utf-8') + b'\x00'
            outfile.write(name_bytes)

            starting_address = current_address
            ending_address = starting_address + file_sizes[i] - 1

            starting_addresses.append(starting_address)
            ending_addresses.append(ending_address)

            outfile.write(struct.pack('<I', starting_address))
            outfile.write(struct.pack('<I', ending_address))

            if image_files[i]:
                image_data = process_image_to_2bit(image_files[i])
                outfile.write(bytearray(image_data))
            else:
                raise RuntimeError(f"No image provided for program '{program_names[i]}'.")

            current_address = ending_address + 1   # Account for image data size

        for filename in program_files:
            with open(filename, 'rb') as infile:
                while True:
                    data = infile.read(4096)
                    if not data:
                        break
                    outfile.write(data)

    print(f"Programs and associated images merged into {output_file}")


def binary_file_to_bits(file_path, output_path):
    try:
        with open(file_path, 'rb') as binary_file:
            binary_data = binary_file.read()
        
        # Convert each byte to its binary representation
        bits = ''.join(format(byte, '08b') for byte in binary_data)
        
        with open(output_path, 'w') as output_file:
            output_file.write(bits)
            
            # Append the copyright and metadata information
            output_file.write("""
//Copyright (C)2014-2024 Gowin Semiconductor Corporation.
//All rights reserved.
//File Title: Bitstream file
//Tool Version: V1.9.10.02
//Device: GW5A-25
//Device Version: A
//Part Number: GW5A-LV25MG121NES
//Device-package: GW5A-25A-MBGA121N
//BackgroundProgramming: OFF
//CheckSum: 0x2A4A
//UserCode: 0x00002A4A
//LoadingRate: 35.000MHz
//CRCCheck: ON
//Compress: OFF
//Encryption: OFF
//SecurityBit: ON
//SecureMode: OFF
//JTAGAsRegularIO: OFF
//SEUHandler: OFF
//MultiBootAddrWidth: 24
//MultiBootSPIAddr: 0x00000000
//MspiJumpAddrWidth: 24
//MspiJumpSPIAddr: 0x000000
//Created Time: Fri Nov  1 15:45:41 2024
111111111111111111111111111111111111111111111111111111111111111111111111111111111
111111111111111111111111111111111101111011011110110111101101111011111111111111111111111111111111
1111111111111111
1010010111000011
0000011000000000000000000000000000000000000000010010100000011011
0001000000000000000000000000000000000000101011100000000000000000
0110001000000000000000000000000000000000000000000000000001000000
0101000100000000111111111111111111111111111111111111111111111111
00001011000000000000000000000000
1101001000000000111111111111111100000000000000000000000000000000
00010010000000000000000000000000
00111011100000000010101101000000""")
        
        print(f"Binary data converted to bits and saved to {output_path}")
    except FileNotFoundError:
        print("The specified file was not found.")
    except Exception as e:
        print(f"An error occurred: {e}")


if __name__ == "__main__":
    app = QApplication(sys.argv)
    gui = DragDropMergeGUI()
    gui.show()
    sys.exit(app.exec())
