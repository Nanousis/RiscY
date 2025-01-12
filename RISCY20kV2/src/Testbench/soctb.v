`ifndef SYNTHESIS
`timescale 10ns/10ns
module test();
  reg clk = 0;
  wire [5:0] led;
  reg btn1= 1;
  reg btn2= 1;

  reg reset=0;
  wire io_sda;
  wire io_scl;
    // wire D1,D2,D3,D4,Dp,A,B,C,D,E,F,G;

top TOP
(   .clk(clk),
    
    .flashMiso(),
    .flashClk(),
    .flashMosi(),
    .flashCs(),

    .uart_rx(),
    .uart_tx(),

    .btnDownR(1),
    .btnUpR(1),
    .btnLeftR(1),
    .btnRightR(1)
);

 always
    #1  clk = ~clk;

    initial begin
        $display("Starting TESTBENCH");
        #10 reset = 1;
        #10 btn1 =0;
        #100 

        #2500000 
        for (i = 0; i < 32; i = i + 1) begin
            case (i)
            0: $display ("%d: x0   : %d - 0x%h", i,test.TOP.cpu_1.cpu_regs.data[i],test.TOP.cpu_1.cpu_regs.data[i]);
            1: $display ("%d: ra   : %d - 0x%h", i,test.TOP.cpu_1.cpu_regs.data[i],test.TOP.cpu_1.cpu_regs.data[i]);
            2: $display ("%d: sp   : %d - 0x%h", i,test.TOP.cpu_1.cpu_regs.data[i],test.TOP.cpu_1.cpu_regs.data[i]);
            3: $display ("%d: gp   : %d - 0x%h", i,test.TOP.cpu_1.cpu_regs.data[i],test.TOP.cpu_1.cpu_regs.data[i]);
            4: $display ("%d: tp   : %d - 0x%h", i,test.TOP.cpu_1.cpu_regs.data[i],test.TOP.cpu_1.cpu_regs.data[i]);
            5: $display ("%d: t0   : %d - 0x%h", i,test.TOP.cpu_1.cpu_regs.data[i],test.TOP.cpu_1.cpu_regs.data[i]);
            6: $display ("%d: t1   : %d - 0x%h", i,test.TOP.cpu_1.cpu_regs.data[i],test.TOP.cpu_1.cpu_regs.data[i]);
            7: $display ("%d: t2   : %d - 0x%h", i,test.TOP.cpu_1.cpu_regs.data[i],test.TOP.cpu_1.cpu_regs.data[i]);
            8: $display ("%d: s0/fp: %d - 0x%h", i,test.TOP.cpu_1.cpu_regs.data[i],test.TOP.cpu_1.cpu_regs.data[i]);
            9: $display ("%d: s1   : %d - 0x%h", i,test.TOP.cpu_1.cpu_regs.data[i],test.TOP.cpu_1.cpu_regs.data[i]);
            10: $display("%d: a0   : %d - 0x%h", i,test.TOP.cpu_1.cpu_regs.data[i],test.TOP.cpu_1.cpu_regs.data[i]);
            11: $display("%d: a1   : %d - 0x%h", i,test.TOP.cpu_1.cpu_regs.data[i],test.TOP.cpu_1.cpu_regs.data[i]);
            12: $display("%d: a2   : %d - 0x%h", i,test.TOP.cpu_1.cpu_regs.data[i],test.TOP.cpu_1.cpu_regs.data[i]);
            13: $display("%d: a3   : %d - 0x%h", i,test.TOP.cpu_1.cpu_regs.data[i],test.TOP.cpu_1.cpu_regs.data[i]);
            14: $display("%d: a4   : %d - 0x%h", i,test.TOP.cpu_1.cpu_regs.data[i],test.TOP.cpu_1.cpu_regs.data[i]);
            15: $display("%d: a5   : %d - 0x%h", i,test.TOP.cpu_1.cpu_regs.data[i],test.TOP.cpu_1.cpu_regs.data[i]);
            16: $display("%d: a6   : %d - 0x%h", i,test.TOP.cpu_1.cpu_regs.data[i],test.TOP.cpu_1.cpu_regs.data[i]);
            17: $display("%d: a7   : %d - 0x%h", i,test.TOP.cpu_1.cpu_regs.data[i],test.TOP.cpu_1.cpu_regs.data[i]);
            18: $display("%d: s2   : %d - 0x%h", i,test.TOP.cpu_1.cpu_regs.data[i],test.TOP.cpu_1.cpu_regs.data[i]);
            19: $display("%d: s3   : %d - 0x%h", i,test.TOP.cpu_1.cpu_regs.data[i],test.TOP.cpu_1.cpu_regs.data[i]);
            20: $display("%d: s4   : %d - 0x%h", i,test.TOP.cpu_1.cpu_regs.data[i],test.TOP.cpu_1.cpu_regs.data[i]);
            21: $display("%d: s5   : %d - 0x%h", i,test.TOP.cpu_1.cpu_regs.data[i],test.TOP.cpu_1.cpu_regs.data[i]);
            22: $display("%d: s6   : %d - 0x%h", i,test.TOP.cpu_1.cpu_regs.data[i],test.TOP.cpu_1.cpu_regs.data[i]);
            23: $display("%d: s7   : %d - 0x%h", i,test.TOP.cpu_1.cpu_regs.data[i],test.TOP.cpu_1.cpu_regs.data[i]);
            24: $display("%d: s8   : %d - 0x%h", i,test.TOP.cpu_1.cpu_regs.data[i],test.TOP.cpu_1.cpu_regs.data[i]);
            25: $display("%d: s9   : %d - 0x%h", i,test.TOP.cpu_1.cpu_regs.data[i],test.TOP.cpu_1.cpu_regs.data[i]);
            26: $display("%d: s10  : %d - 0x%h", i,test.TOP.cpu_1.cpu_regs.data[i],test.TOP.cpu_1.cpu_regs.data[i]);
            27: $display("%d: s11  : %d - 0x%h", i,test.TOP.cpu_1.cpu_regs.data[i],test.TOP.cpu_1.cpu_regs.data[i]);
            28: $display("%d: t3   : %d - 0x%h", i,test.TOP.cpu_1.cpu_regs.data[i],test.TOP.cpu_1.cpu_regs.data[i]);
            29: $display("%d: t4   : %d - 0x%h", i,test.TOP.cpu_1.cpu_regs.data[i],test.TOP.cpu_1.cpu_regs.data[i]);
            30: $display("%d: t5   : %d - 0x%h", i,test.TOP.cpu_1.cpu_regs.data[i],test.TOP.cpu_1.cpu_regs.data[i]);
            31: $display("%d: t6   : %d - 0x%h", i,test.TOP.cpu_1.cpu_regs.data[i],test.TOP.cpu_1.cpu_regs.data[i]);
            default: $display("x%d: %d", i, test.TOP.cpu_1.cpu_regs.data[i]);
            endcase
        end
        for (i = 0; i < 19; i = i + 1) begin
            $display("%d: %s", i,test.TOP.text.charMemory[i]);
        end
        $finish;
    end
    integer i;
    initial begin
        $dumpfile("ZSOC.vcd");
        $dumpvars(0,test);
        for (i = 0; i < 32; i = i + 1) begin
            $dumpvars(1, test.TOP.cpu_1.cpu_regs.data[i]);
        end
        for (i = 0; i < 19; i = i + 1) begin
            $dumpvars(1, test.TOP.text.charMemory[i]);
        end
        // for (i = 0; i < 8; i = i + 1) begin
        //     $dumpvars(1, test.TOP.u_memory_management_unit.InstCache.data_mem[i]);
        // end
    end
endmodule
`endif
