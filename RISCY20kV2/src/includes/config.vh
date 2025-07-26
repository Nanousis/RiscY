
// Instruction memory
`define TEXT_BEGIN      `INITIAL_PC
`define TEXT_BITS       24
`define TEXT_WIDTH      2**`TEXT_BITS
`define TEXT_END        `TEXT_BEGIN + `TEXT_WIDTH - 1

`ifndef RV_CONFIG
`define RV_CONFIG

// Select ISA extensions
// `define M_MODULE    // multiplication and division

//////////////////////////////////////////
//              Memory config           //
//////////////////////////////////////////

// Program counter initial value
// `define INITIAL_PC      32'h00400000
`define INITIAL_PC  32'h00000000
`define BOOTLOADER_END  32'h00001000


`define SECOND_STAGE_START 32'h00800000
`define SECOND_STAGE_END 32'h008fffff
`define CLINT_START 32'h0200_0000
`define CLINT_END 32'h02f0_0000

`define UART_ADDRESS 32'h1000_0000
`define UART_END 32'h1000_000f


`define PROGRAM_MEMORY_START 32'h70000000
`define PROGRAM_MEMORY_END 32'h70FFFFFF
`define SDRAM_BEGIN     32'h8000_0000
`define SDRAM_END       32'h80FF_FFFF
`define SCREEN_ADDRESS 32'h8800_0000
`define SCREEN_END 32'h8810_0000
`define BUTTON_ADDRESS 32'h8900_0000
`define COUNTER1M_ADDRESS 32'h8A00_0000
`define COUNTER27M_ADDRESS 32'h8A00_0004
`define FLASH_CONTROLLER_ADRESS 32'h8B00_0000
`define FLASH_CONTROLLER_END 32'h8B00_0F00
`define USB_CONTROLLER_ADRESS 32'h8C00_0000
`define USB_CONTROLLER_END 32'h8C00_0016


//`define SCREEN_RANGE   32'd64

// Data memory

`define DATA_BEGIN      32'h8000_0000
`define DATA_BITS       20
`define DATA_WIDTH      2**`DATA_BITS
`define DATA_END        `DATA_BEGIN + `DATA_WIDTH - 1

`define TEXT_HEX  "text.hex"
`define DATA_HEX  "data.hex"

`endif