`ifndef TESTBENCH
`include "config.vh"
`else
`include "../includes/config.vh"
`endif
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
            input [31:0] second_stage_mem_out, // ADD
            input [31:0] usb_out,
            input [31:0] clint_data_out,
            input [31:0] sdram_data_out,

            input [31:0] boot_instr,
            input [31:0] sdram_instr,
            input [31:0] second_stage_instr,

            output reg clint_ren,
            output reg clint_wen,
            output reg mem_ren,
            output reg mem_wen,
            output reg program_mem_ren,  // ADD
            output reg program_mem_wen,  // ADD
            output reg second_stage_mem_ren,  // ADD
            output reg second_stage_mem_wen,  // ADD
            output reg screen_ren,
            output reg screen_wen,
            output reg flash_ren,
            output reg flash_wen,
            output reg uart_ren,
            output reg uart_wen,
            output reg btn_ren,
            output reg usb_ren,
            output reg sdram_ren,
            output reg sdram_wen,


            output reg [31:0] data_out,
            output reg [31:0] instr_out,
            // data to write
            input [31:0] data_to_write,
            output reg [31:0] data_to_write_reg,
            // byte select vector
            input [3:0] byte_select_vector,
            output reg[3:0] data_mask_reg,

            output reg [31:0] address_reg,

            // ready signals
            input memReady,
            input sdram_ready,
            output reg bus_ready
);

// reg [31:0] address_reg;
// reg [31:0] data_to_write_reg;
// reg [31:0] data_mask_reg;

reg [31:0] data_out_new,data_out_old;
reg bus_ready_old;

always@(posedge clk) begin
    bus_ready_old<=bus_ready;
    if(bus_ready==1) begin
        address_reg <= data_addr;
    end
    if(bus_ready_old)
    begin
        data_out_old <= data_out_new;
        data_to_write_reg <= data_to_write;
        data_mask_reg <= byte_select_vector;
    end
end
// manage stalls i guess.... Really should move to a better bus system
always@(*) begin

    if((data_addr >= `SDRAM_BEGIN && data_addr < (`SDRAM_END))
    || (address_reg >= `SDRAM_BEGIN && address_reg < (`SDRAM_END))
    || (PC >= `SDRAM_BEGIN && PC < (`SDRAM_END))) begin
       bus_ready = sdram_ready; 
    end
    else
    begin
        bus_ready = memReady;
    end
end
assign data_out= (bus_ready==0)?data_out_old:data_out_new;
// assign data_out = data_out_new;

always@(*) begin
    
    //************************ INSTRUCTIONS ************************//

    if(PC <= `BOOTLOADER_END)begin
        instr_out = boot_instr;
    end
    else if( PC >= `SECOND_STAGE_START && PC < `SECOND_STAGE_END)begin
        instr_out = second_stage_instr;
    end
    else if( PC >= `SDRAM_BEGIN && PC < `SDRAM_END)begin
        instr_out = sdram_instr;
    end
    else
        instr_out = 32'b0;

    //************************ DATA ************************//

    second_stage_mem_ren = 0;
    second_stage_mem_wen = 0;
    program_mem_ren = 0;
    program_mem_wen = 0;
    mem_ren = 0;
    mem_wen = 0;
    screen_ren = 0;
    sdram_ren = 0;
    sdram_wen = 0;
    screen_wen = 0;
    flash_ren = 0;
    flash_wen = 0;
    btn_ren = 0;
    data_out_new = 0;
    uart_ren = 0;
    uart_wen = 0;
    usb_ren = 0;
    clint_ren = 0;
    clint_wen = 0;

    // memory mapped screen, the range is times 2 due to the use of halfword
    if(data_addr>=`SCREEN_ADDRESS && data_addr <(`SCREEN_END)) begin
        screen_wen = wen;
        data_out_new = memory_out;
    end
    // memory mapped button
    else if(data_addr >= `BUTTON_ADDRESS && data_addr < (`BUTTON_ADDRESS+16)) begin
        btn_ren = ren;
        data_out_new = (btn_out==1'b1)?32'b0:32'h1010101;
    end
    else if(data_addr == `COUNTER1M_ADDRESS) begin
        data_out_new = counter1M;
    end
    else if(data_addr == `COUNTER27M_ADDRESS) begin
        data_out_new = counter27M;
    end
    else if(data_addr >= `FLASH_CONTROLLER_ADRESS && data_addr <(`FLASH_CONTROLLER_END)) begin
        flash_ren = ren;
        flash_wen = wen;
        data_out_new =  flash_out;
    end
    else if(data_addr >= `SECOND_STAGE_START && data_addr < (`SECOND_STAGE_END))begin
        second_stage_mem_ren = ren;
        second_stage_mem_wen = wen;
        data_out_new = second_stage_mem_out;
    end
    else if(data_addr >= `PROGRAM_MEMORY_START && data_addr < (`PROGRAM_MEMORY_END))begin
        program_mem_ren = ren;
        program_mem_wen = wen;
        data_out_new = program_mem_out;
    end
    else if(data_addr >= `UART_ADDRESS && data_addr < (`UART_END)) begin
        uart_ren = ren;
        uart_wen = wen;
        data_out_new = uart_out;
    end
    else if(data_addr >= `USB_CONTROLLER_ADRESS && data_addr < (`USB_CONTROLLER_END)) begin
        usb_ren = ren;
        data_out_new = usb_out;
    end
    else if(data_addr >= `CLINT_START && data_addr < (`CLINT_END)) begin
        clint_ren = ren;
        clint_wen = wen;
        data_out_new = clint_data_out;
    end
    else if(data_addr >= `SDRAM_BEGIN && data_addr < (`SDRAM_END)) begin
        sdram_ren = ren;
        sdram_wen = wen;
        data_out_new = sdram_data_out;
    end
    else begin
        mem_ren = ren;
        mem_wen = wen;
        data_out_new = memory_out;
    end
end


endmodule