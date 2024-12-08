`ifndef TESTBENCH
`include "constants.vh"
`include "config.vh"
`else
`include "../includes/constants.vh"
`include "../includes/config.vh"
`endif


// Control and Status Register File
module CSRFile (input clock, 
                input reset,
                input [11:0] csrAddr,
                input ren,
                input wen,
                input [31:0] wd,
                output [31:0] rd
                );
/****** SIGNALS ******/
integer i;

// reg [31:0] m_inf_reg [0:4];
// reg [31:0] m_trap_setup[0:18];
// reg [31:0] m_trap_handling[0:12];
// reg [31:0] menvcfg;
// reg [31:0] menvcfgh;

// reg [31:0] mcycle;
// reg [31:0] mcycleh;
// reg [31:0] minstret;
// reg [31:0] minstreth;
// reg [31:0] m_counters[0:8];

reg [31:0] mstatus; // Machine status register address 0x300
reg [31:0] mstatush; // Machine status register address 0x300

reg [31:0] misa;    // Machine ISA register address 0x301
reg [31:0] mie;     // Machine interrupt enable register address 0x304
reg [31:0] mtvec;   // Machine trap vector base address register address 0x305
reg [31:0] mscratch;// Machine scratch register address 0x340
reg [31:0] mepc;    // Machine exception program counter register address 0x341
reg [31:0] mcause;  // Machine cause register address 0x342
reg [31:0] mtval;   // Machine trap value register address 0x343
reg [31:0] mip;     // Machine interrupt pending register address 0x344
// reg [63:0] mcycle; //maybe?

always @(posedge clock or negedge reset)
begin

    if(reset == 1'b0)
    begin
        mstatus <= 32'b0;
        mstatush <= 32'b0;
        misa <= 32'h40000100;
        mie <= 32'b0;
        mtvec <= 32'b0;
        mscratch <= 32'b0;
        mepc <= 32'b0;
        mcause <= 32'b0;
        mtval <= 32'b0;
        mip <= 32'b0;
    end
    else
    begin
        if(wen == 1'b1)
        begin
            case(csrAddr)
                12'h300: mstatus <= wd;
                12'h301: misa <= wd;
                12'h304: mie <= wd;
                12'h305: mtvec <= wd;
                // 12'h306: mcounteren <= wd;
                12'h301: mstatush <= wd;
                12'h340: mscratch <= wd;
                12'h341: mepc <= wd;
                12'h342: mcause <= wd;
                12'h343: mtval <= wd;
                12'h344: mip <= wd;
            endcase 
        end
    end
end

always @(*)begin

    if(ren == 1'b1 && wen == 1'b0)
    begin
        case(csrAddr)
            12'h300: rd = mstatus;
            12'h301: rd = misa;
            12'h304: rd = mie;
            12'h305: rd = mtvec;
            // 12'h306: rd = mcounteren;
            12'h301: rd = mstatush;
            12'h340: rd = mscratch;
            12'h341: rd = mepc;
            12'h342: rd = mcause;
            12'h343: rd = mtval;
            12'h344: rd = mip;
            default: rd = 32'b0;
        endcase 
    end
    else
    begin
        rd=0;
    end
end

endmodule