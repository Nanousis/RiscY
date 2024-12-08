`include "config.vh"

module bus( input clk,
            input [31:0] PC,
            input [31:0] data_addr,
            input ren,
            input wen,
            input btn_out,
            input [31:0] memory_out,
            input [31:0] flash_out,
            input [31:0] uart_out,
            input [31:0] counter27M,
            input [31:0] counter1M,
            input [31:0] program_mem_out, // ADD
            input [31:0] ram_out,

            input [31:0] boot_instr,
            input [31:0] program_instr,

            output reg mem_ren,
            output reg mem_wen,
            output reg ram_ren,
            output reg ram_wen,
            output reg program_mem_ren,  // ADD
            output reg program_mem_wen,  // ADD
            output reg screen_ren,
            output reg screen_wen,
            output reg flash_ren,
            output reg flash_wen,
            output reg uart_ren,
            output reg btn_ren,
            output reg [31:0] data_out,
            output reg [31:0] instr_out
);

always@(*) begin
    
    //************************ INSTRUCTIONS ************************//

    if(PC <= `BOOTLOADER_END)begin
        instr_out = boot_instr;
    end
    else if( PC >= `PROGRAM_MEMORY_START && PC < `PROGRAM_MEMORY_END)begin
        instr_out = program_instr;
    end 
    else
        instr_out = 32'b0;

    //************************ DATA ************************//

    program_mem_ren = 0;
    program_mem_wen = 0;
    mem_ren = 0;
    mem_wen = 0;
    screen_ren = 0;
    screen_wen = 0;
    flash_ren = 0;
    flash_wen = 0;
    btn_ren = 0;
    data_out = 0;
    uart_ren = 0;
    ram_ren = 0;
    ram_wen = 0;

    // memory mapped screen, the range is times 2 due to the use of halfword
    if(data_addr>=`SCREEN_ADDRESS && data_addr <(`SCREEN_ADDRESS+`SCREEN_RANGE*2)) begin
        screen_wen = wen;
        data_out = memory_out;
    end
    // memory mapped button
    else if(data_addr >= `BUTTON_ADDRESS && data_addr < (`BUTTON_ADDRESS+16)) begin
        btn_ren = ren;
        data_out = (btn_out==1'b1)?32'b0:32'h1010101;
    end
    else if(data_addr == `COUNTER1M_ADDRESS) begin
        data_out = counter1M;
    end
    else if(data_addr == `COUNTER27M_ADDRESS) begin
        data_out = counter27M;
    end
    else if(data_addr >= `FLASH_CONTROLLER_ADRESS && data_addr <(`FLASH_CONTROLLER_END)) begin
        flash_ren = ren;
        flash_wen = wen;
        data_out =  flash_out;
    end
    else if(data_addr >= `PROGRAM_MEMORY_START && data_addr < (`PROGRAM_MEMORY_END))begin
        program_mem_ren = ren;
        program_mem_wen = wen;
        data_out = program_mem_out;
    end
    else if(data_addr >= `UART_ADDRESS && data_addr < (`UART_END)) begin
        uart_ren = ren;
        data_out = uart_out;
    end
    else if(data_addr >= `RAM_START && data_addr < (`RAM_END)) begin
        ram_ren = ren;
        ram_wen = wen;
        data_out = ram_out;
    end
    else begin
        mem_ren = ren;
        mem_wen = wen;
        data_out = memory_out;
    end
end


endmodule