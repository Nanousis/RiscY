# RISC-Y

## A Custom RISC-V SoC for Gowin FPGA Boards

<center>
  <img src="images/riscy_tetris.jpg" alt="RISC-Y System Overview" title="RISC-Y System Overview" width="600">
</center>

RISC-Y is a lightweight, fully open RISC-V system designed for rapid experimentation and education. Originally targeting the Tang Nano 9K and Tang Primer 25K boards, this project now features enhanced hardware-software integration, a custom bootloader, and multiple tools for application development and debugging.

---

## Features

- **RV32I Core with Extensions:**  
  Fully implements the RV32I instruction set with the Zicsr privileged extension and plans to add multiplication, division, and floating-point support.
- **Integrated Peripherals:**  
  Support for HDMI and 40-pin LVDS displays, a USB keyboard interface (via an embedded 8-bit microcontroller), SPI Flash storage, and a programmable bootloader.
- **On-Board Software Tools:**  
  Includes a GCC-based toolchain, a Python-based Program Merger, and an RV32I emulator for pre-deployment testing.
- **Custom Bootloader & File System:**  
  A lightweight bootloader that reads an integrated flash binary file system, allowing users to select and load applications directly into the FPGA’s RAM.
- **Testbench and Debugging:**  
  Built-in testbench support for verifying assembly and C-code execution, along with a simulation environment that mimics the VGA text mode output and real-time register monitoring.
- **Extensible Design:**  
  Designed with future enhancements in mind – including DRAM controllers, performance monitors, virtual memory, and even multicore expansion.

---

## Prerequisites & Setup

### Hardware Requirements

- **FPGA Boards:**  
  Tang Nano 9K, Tang Nano 20K, or Tang Primer 25K (note: Primer 25K requires careful connection of HDMI PMOD and proper button/keyboard interface wiring).
- **Programming Cable & Drivers:**  
  Ensure your board is properly connected via USB. For Windows users, if programming errors occur, use [Zadig](https://zadig.akeo.ie/) to replace the drivers for “USB Debugger 0” and “USB Debugger 1” with WinUSB.

### Software Requirements

- **Gowin IDE (v1.9.10 or later):**  
  Download from [Gowin’s website](https://www.gowinsemi.com/en/support/download_eda/).  
  - **Windows:** Install the Floating Point license from Sipeed if using a non-educational version.  
  - **Linux:** Extract the downloaded package and run the install.sh script located in the `Gowin/Drivers` directory.  
  - **Mac:** Download the mac version (under the Linux tab) and follow the available tutorial (e.g., via Reddit posts).
- **openFPGALoader:**  
  Available on [GitHub](https://github.com/trabucayre/openFPGALoader).
- **riscv64-unknown-elf-gcc Toolchain:**  
  - **Linux:**  
    ```bash
    sudo apt update
    sudo apt install gcc-riscv64-unknown-elf
    export PATH=/opt/riscv/bin:$PATH
    source ~/.bashrc
    riscv64-unknown-elf-gcc --version
    ```  
  - **Mac:**  
    Install Homebrew then:  
    ```bash
    brew tap riscv-software-src/riscv
    brew install riscv-tools
    riscv64-unknown-elf-gcc --version
    ```

---

## Installation & Bitstream Generation

1. **Download & Install Gowin IDE:**  
   Install the IDE and required drivers following the instructions above.

2. **Generating the Bitstream:**  
   - Launch the Gowin IDE (either from the Applications folder or via `Gowin/Gowin_1.x.x/IDE/bin/gw_ide`).
   - Open the project file (*.grpj) corresponding to your FPGA board (e.g., Tang Primer 25K).
   - Run synthesis and Place & Route by double-clicking the corresponding buttons in the process window.
   - Open the programmer window and, if programming to flash, select “Gowin External Flash Mode” (for temporary SRAM testing, leave in SRAM Mode).  
     > **Note for Tang Primer 25K:** Due to a known bug, if using flash you may need to use the generated output.fs file.

3. **Burning Program Files to Flash:**  
   - Build your application (see below) so that a binary file (e.g. `build0/program.bin`) is generated.
   - Navigate to the `riscYcompiler/MergerV2/` directory and run:
     ```bash
     python3 merger.py
     ```
   - Drag and drop your binary (and optionally a 16×16 thumbnail image) onto the GUI and press “Merge.” This creates a merged_programs.bin file.
   - In the Gowin programmer, update the start address to 0x500000 (if using Tang Primer 25K) and point to the merged binary file. Then flash the bitstream.

---

## Software Development

### Building an Application

- Navigate to `riscYcompiler/riscYcompiler/` and open your project in your favorite editor.
- Edit the main application file (e.g. replace `main.c` with code from `WorkingCodes/helloWorldNew.c` for testing).
- Run `make` to compile your application. The resulting binary will appear in a `builds/` folder.
- Use the Program Merger as described above to incorporate your application into the bootloader file system.

### Bootloader Modifications

- The bootloader (located in `riscYcompiler/bootloaderCompiler/`) is the first code executed on FPGA reset.  
- To update the bootloader:
  - Edit `main.c` in the bootloader folder.
  - Rebuild the bootloader and copy the generated hex code (from builds/buildX/program.hex) into the “text.hex” field in GowinEDA.
  - Re-run Place & Route and re-flash the bitstream.
  
### Testbench & Debugging

- For simulation, copy your compiled assembly hex file into `includes/testbenchtext.hex`.
- Run the provided testbench script:
  - **Linux/macOS:** `./Testbench/runTB.bash`
  - **Windows:** `testbench.bat`
- The testbench outputs debug information and generates a GTKWave file for signal inspection.

---

## Additional Tools & Resources

- **Program Merger:**  
  A Python GUI that streamlines merging multiple binaries (and optional thumbnails) into a single flash image.
- **RV32I Emulator:**  
  A JavaScript-based emulator for verifying code before deploying to FPGA.
- **Map Creator:**  
  A fun, browser-based tool for creating tile-based maps for sprite-driven games.
- **Documentation:**  
  For in-depth architectural details, interrupt handling, cache implementation, and peripheral design, please refer to the full project documentation.

---

## Future Enhancements

- **DRAM Controller & SDRAM Support:** Expand memory capabilities.
- **Enhanced CPU Performance:** Add branch prediction, out-of-order execution, and performance monitors.
- **Operating System Integration:** Port a lightweight RTOS (e.g., Zephyr) to support multitasking.
- **Peripheral Expansion:** Develop additional controllers (SD card, I2C, GPIO) and explore multicore configurations.

---

## Acknowledgments

Developed at the **University of Thessaly**.  
Special thanks to the contributors of Gowin IDE, the riscv toolchain, and the open-source community for providing invaluable resources and support.

---

## Contributing

Contributions are welcome! If you have ideas, bug fixes, or enhancements, please open an issue or submit a pull request.

---

*For any questions or support, please open an issue in this repository.*
