# Overview

This is an SDRAM controller for the Tang Nano 20K.

It includes a 3-channel arbiter, allowing up to 3 masters to access the SDRAM simultaneously.

This is based on the SDRAM controller published by nand2mario:  
[https://github.com/nand2mario/sdram-tang-nano-20k](https://github.com/nand2mario/sdram-tang-nano-20k)

The following enhancements have been made:

- Burst transfer support
- Burst length can be changed per transaction
- Interface has been made similar to the PSRAM controller of the Tang Nano 9K
- Operates at 166MHz

## rtl
- `src/sdramc.v`  
  The main SDRAM controller

- `src/sdram_arb.v`  
  Command interface arbiter

## example
- `tb/test_sdramc.v`

This sample **does not use** the arbiter.  
The SDRAM model used in this sample is **not included**.  
Please download the SDRAM model from Micron's website:  
We use `mt48lc2m32b2.v` available there.  

Download it from:  
https://www.micron.com/support#SupportDocumentationandDownloads  
→ Go to Sim Models  
→ Select SDRAM under the DRAM category  
→ Then select Verilog under the Simulation Models category  

Unfortunately, there are many links labeled just `Verilog (ZIP)` and it's unclear which one is correct.  
The only method seems to be downloading a few and checking the Verilog model inside the ZIP.

After trying several, the correct x32 model was in the file:  
`4076mt48lc2m32b2.zip`

When hovering your mouse over the "Download" link in the browser, you can see the file name before clicking.

---

# SDRAM Controller Interface Specification

| Pin Name       | I/O | Active | Description
|----------------|-----|--------|-----------------------------------
| **system**     |     |        |
| resetn         | I   | Low    | Reset
| clk            | I   | -      | Main clock
| clk_sdram      | I   | -      | Main clock (*1)
| clk_capdq      | I   | -      | DQ capture clock (*2)
| **command i/f**|     |        |
| cmd_en         | I   | High   | Transaction request
| cmd            | I   | -      | 0: Read, 1: Write
| addr[22:0]     | I   | -      | Byte address
| cmd_len[3:0]   | I   | -      | Burst length
| cmd_ack        | O   | High   | Transaction accepted
| rd_data[31:0]  | O   | -      | Read data
| rd_data_valid  | O   | High   | Read data is valid
| wr_data[31:0]  | I   | -      | Write data
| wr_mask[3:0]   | I   | High   | Write data byte mask

\*1: Use the same clock signal as `clk` for `clk_sdram`.  
\*2: At 166MHz operation (or near it), use the same clock signal as `clk` for `clk_capdq`.  
If operating at lower frequencies, use a PLL to generate a phase-shifted clock from `clk` to capture DQ correctly.

## Command I/F Timing Diagrams

![read timing](images/timing_cmdif_read.PNG "read timing")  
![write timing](images/timing_cmdif_write.PNG "write timing")

---

# About the SDRAM AC Specs

We could not find documentation listing the AC specifications of the SDRAM built into the Tang Nano 20K.  
So, we referred to Micron's `MT48LC2M32B2 – 512K x 32 x 4 Banks`.

Initially, we tried operating at 166MHz using the `-6` speed grade (which supports tCK < 6ns),  
but observed memory corruption.  
Therefore, we switched to using the `-7` parameters.

Although this limits operation to 143MHz, it works without memory corruption in practice.  
It might be possible to tune further, but for now we're using the `-7` parameters as-is.

Note: Although this is over the spec for Micron's SDRAM, it's unknown if GOWIN's built-in SDRAM behaves the same.

---

# References

- [https://github.com/nand2mario/sdram-tang-nano-20k](https://github.com/nand2mario/sdram-tang-nano-20k)  
- https://media-www.micron.com/-/media/client/global/documents/products/data-sheet/dram/64mb_x32_sdram.pdf?rev=0af7f6403bf14075ab6b3984f549fc15
