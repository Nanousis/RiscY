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
                input [11:0] csrWAddr,
                input ren,
                input wen,
                input [31:0] wd,
                output reg [31:0] rd,
                input write_pc,

                // CLIC signals
                input [31:0] PC_ID,
                input [31:0] new_mepc,
                input timer_interrupt,
                input software_interrupt,
                input external_interrupt,
                input syscall,
                output reg int_taken,
                output reg trap_in_ID,
                output reg flushPipeline,
                output reg [31:0] trap_vector

);
parameter FLUSH_COUNT = 4'd13;
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
wire [31:0] mip;     // Machine interrupt pending register address 0x344
// reg [63:0] mcycle; //maybe?
assign mip = {16'b0,4'b0,external_interrupt,3'b0,timer_interrupt,3'b0,software_interrupt,3'b0}; 

reg [2:0] enableInterrupts;
// this is 100% going to be lost in a stall.
reg [3:0] pipeline_flush_count;

reg [40*8-1:0] debug;
reg [40*8-1:0] debug2;

// THIS IS VERY BAD, BUT ITS THE FASTEST SOLUTION I CAME UP WITH
// IN CASE WE WRITE MEPC AND ALSO HAVE MRET AFTER
reg [31:0] trap_vector_reg; 
always @(*)begin
    if(wen == 1'b1 & csrWAddr=='h341)begin
        trap_vector = wd;
        debug2 ="FORWARD MEPC";
    end
    else begin
        debug2 ="a";
        trap_vector = trap_vector_reg;
    end
end


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
        int_taken <= 1'b0;
        trap_vector_reg <= 32'b0;
        enableInterrupts <= 3'b111;
        flushPipeline <= 1'b0;
        pipeline_flush_count <= FLUSH_COUNT;
        debug <= " ";
    end
    else
    begin
        begin // read write section.
            if(wen == 1'b1)
            begin
                case(csrWAddr)
                    12'h300: mstatus <= wd;
                    // 12'h301: misa <= wd;
                    12'h304: mie <= wd;
                    12'h305: mtvec <= {wd[31:2],2'b0};
                    // 12'h306: mcounteren <= wd;
                    12'h301: mstatush <= wd;
                    12'h340: mscratch <= wd;
                    12'h341: mepc <= wd;
                    12'h342: mcause <= wd;
                    12'h343: mtval <= wd;
                    // 12'h344: mip <= wd;
                endcase 
            end
            if(csrAddr==csrWAddr)
            begin
                rd <= wd;
            end
            else begin
                case(csrAddr)
                    12'h300: rd <= mstatus;
                    12'h301: rd <= misa;
                    12'h304: rd <= mie;
                    12'h305: rd <= mtvec;
                    // 12'h306: rd <= mcounteren;
                    12'h301: rd <= mstatush;
                    12'h340: rd <= mscratch;
                    12'h341: rd <= mepc;
                    12'h342: rd <= mcause;
                    12'h343: rd <= mtval;
                    // mip[11]=external_interrupt, mip[7]=timer_interrupt, mip[3]=software_interrupt
                    12'h344: rd <= mip;
                    default: rd <= 32'b0;
                endcase 
            end
        end
        begin // interrupt handling section
            if(enableInterrupts <= 3'b110)
            begin
                enableInterrupts <= enableInterrupts + 1;
                if(enableInterrupts == 3'b110)
                begin
                    mstatus[3] <= mstatus[7];
                end
            end
            if(flushPipeline == 1'b1)
            begin
                if(write_pc == 1'b1)
                    pipeline_flush_count <= pipeline_flush_count + 1;
                if(pipeline_flush_count == FLUSH_COUNT)
                begin
                    flushPipeline <= 1'b0;
                    mepc <= new_mepc;
                    int_taken <= 1;
                end
            end
            else if(write_pc == 1'b1)
            begin
                int_taken <= 1'b0;
                trap_in_ID <= 1'b0;
                // flushPipeline <= 1'b0;
                if(syscall == 1'b1) begin
                    // ecall instruction
                    if(csrAddr==0)begin
                        // trap handler chooses whether to return to next instruction or not
                        mepc <= PC_ID;
                        trap_in_ID <= 1'b1;
                        trap_vector_reg <= {mtvec[31:2],2'b0};
                        debug <= "ecall";
                        // it would be 8 if we have user mode but we dont
                        mcause <= {1'b0,31'd11};
                        mstatus[7] <= mstatus[3];
                        mstatus[3] <= 1'b0;
                    end
                    else if(csrAddr==1)begin
                        debug <= "ebreak";
                        // ebreak instruction
                        mepc <= PC_ID;
                        trap_in_ID <= 1'b1;
                        trap_vector_reg <= {mtvec[31:2],2'b0};
                        mcause <= {1'b0,31'd3};
                        mstatus[7] <= mstatus[3];
                        mstatus[3] <= 1'b0;
                    end
                    // mret instruction
                    else if(csrAddr=='h302)begin
                        debug <= "mret";
                        trap_in_ID <= 1'b1;
                        trap_vector_reg <= mepc;
                        enableInterrupts <= 0;
                        // mstatus[3] <= mstatus[7];
                        // mstatus[7] <= 1'b0;
                    end
                end
                // mstatus[3]=MIE, mstatus[7]=MPIE, mstatus[11]=MPEI
                else if(mstatus[3] == 1'b1) begin
                    // external interrupt
                    if(external_interrupt & mie[11]==1'b1 & mip[11] == 1'b1) begin
                        // mepc <= new_mepc;
                        // int_taken <= 1;
                        trap_vector_reg <= {mtvec[31:2],2'b0};
                        mcause <= {1'b1,31'd11};
                        mstatus[7] <= mstatus[3];
                        mstatus[3] <= 1'b0;
                        flushPipeline <= 1'b1;
                        pipeline_flush_count <= 0;
                    end
                    //timer interrupt
                    else if(timer_interrupt & mie[7]==1'b1 & mip[7] == 1'b1) begin
                        // mepc <= new_mepc;
                        // int_taken <= 1;
                        trap_vector_reg <= {mtvec[31:2],2'b0};
                        mcause <= {1'b1,31'd7};
                        mstatus[7] <= mstatus[3];
                        mstatus[3] <= 1'b0;
                        flushPipeline <= 1'b1;
                        pipeline_flush_count <= 0;
                    end
                    //software interrupt
                    else if(software_interrupt & mie[3]==1'b1 & mip[3] == 1'b1) begin
                        // mepc <= new_mepc;
                        // int_taken <= 1;
                        trap_vector_reg <= {mtvec[31:2],2'b0};
                        mcause <= {1'b1,31'd3};
                        mstatus[7] <= mstatus[3];
                        mstatus[3] <= 1'b0;
                        flushPipeline <= 1'b1;
                        pipeline_flush_count <= 0;
                    end
                end
            end
        end
    end
end

endmodule