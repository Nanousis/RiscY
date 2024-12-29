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
    .tmds_clk_n_1(),
    .tmds_clk_p_1(),
    .tmds_d_n_1(),
    .tmds_d_p_1(),
    
    .flashMiso(),
    .flashClk(),
    .flashMosi(),
    .flashCs(),
    .flashWp(),
    .flashHold(),

    .usb_dm(),
    .usb_dp(),          // USB D- and D+

    .uart_rx(),
    .uart_tx(),

    .resetn(0),
    .s2(1),
    .btnDownL(1),
    .btnUpL(1),
    .btnLeftL(1),
    .btnRightL(1)
);

 always
    #1  clk = ~clk;

    initial begin
        $display("Starting TESTBENCH");
        #10 reset = 1;
        #10 btn1 =0;
        #100 

        #20000 
        for (i = 0; i < 32; i = i + 1) begin
            case (i)
            0: $display ("x0   : %d - 0x%h", test.TOP.cpu_1.cpu_regs.data[i],test.TOP.cpu_1.cpu_regs.data[i]);
            1: $display ("ra   : %d - 0x%h", test.TOP.cpu_1.cpu_regs.data[i],test.TOP.cpu_1.cpu_regs.data[i]);
            2: $display ("sp   : %d - 0x%h", test.TOP.cpu_1.cpu_regs.data[i],test.TOP.cpu_1.cpu_regs.data[i]);
            3: $display ("gp   : %d - 0x%h", test.TOP.cpu_1.cpu_regs.data[i],test.TOP.cpu_1.cpu_regs.data[i]);
            4: $display ("tp   : %d - 0x%h", test.TOP.cpu_1.cpu_regs.data[i],test.TOP.cpu_1.cpu_regs.data[i]);
            5: $display ("t0   : %d - 0x%h", test.TOP.cpu_1.cpu_regs.data[i],test.TOP.cpu_1.cpu_regs.data[i]);
            6: $display ("t1   : %d - 0x%h", test.TOP.cpu_1.cpu_regs.data[i],test.TOP.cpu_1.cpu_regs.data[i]);
            7: $display ("t2   : %d - 0x%h", test.TOP.cpu_1.cpu_regs.data[i],test.TOP.cpu_1.cpu_regs.data[i]);
            8: $display ("s0/fp: %d - 0x%h", test.TOP.cpu_1.cpu_regs.data[i],test.TOP.cpu_1.cpu_regs.data[i]);
            9: $display ("s1   : %d - 0x%h", test.TOP.cpu_1.cpu_regs.data[i],test.TOP.cpu_1.cpu_regs.data[i]);
            10: $display("a0   : %d - 0x%h", test.TOP.cpu_1.cpu_regs.data[i],test.TOP.cpu_1.cpu_regs.data[i]);
            11: $display("a1   : %d - 0x%h", test.TOP.cpu_1.cpu_regs.data[i],test.TOP.cpu_1.cpu_regs.data[i]);
            12: $display("a2   : %d - 0x%h", test.TOP.cpu_1.cpu_regs.data[i],test.TOP.cpu_1.cpu_regs.data[i]);
            13: $display("a3   : %d - 0x%h", test.TOP.cpu_1.cpu_regs.data[i],test.TOP.cpu_1.cpu_regs.data[i]);
            14: $display("a4   : %d - 0x%h", test.TOP.cpu_1.cpu_regs.data[i],test.TOP.cpu_1.cpu_regs.data[i]);
            15: $display("a5   : %d - 0x%h", test.TOP.cpu_1.cpu_regs.data[i],test.TOP.cpu_1.cpu_regs.data[i]);
            16: $display("a6   : %d - 0x%h", test.TOP.cpu_1.cpu_regs.data[i],test.TOP.cpu_1.cpu_regs.data[i]);
            17: $display("a7   : %d - 0x%h", test.TOP.cpu_1.cpu_regs.data[i],test.TOP.cpu_1.cpu_regs.data[i]);
            18: $display("s2   : %d - 0x%h", test.TOP.cpu_1.cpu_regs.data[i],test.TOP.cpu_1.cpu_regs.data[i]);
            19: $display("s3   : %d - 0x%h", test.TOP.cpu_1.cpu_regs.data[i],test.TOP.cpu_1.cpu_regs.data[i]);
            20: $display("s4   : %d - 0x%h", test.TOP.cpu_1.cpu_regs.data[i],test.TOP.cpu_1.cpu_regs.data[i]);
            21: $display("s5   : %d - 0x%h", test.TOP.cpu_1.cpu_regs.data[i],test.TOP.cpu_1.cpu_regs.data[i]);
            22: $display("s6   : %d - 0x%h", test.TOP.cpu_1.cpu_regs.data[i],test.TOP.cpu_1.cpu_regs.data[i]);
            23: $display("s7   : %d - 0x%h", test.TOP.cpu_1.cpu_regs.data[i],test.TOP.cpu_1.cpu_regs.data[i]);
            24: $display("s8   : %d - 0x%h", test.TOP.cpu_1.cpu_regs.data[i],test.TOP.cpu_1.cpu_regs.data[i]);
            25: $display("s9   : %d - 0x%h", test.TOP.cpu_1.cpu_regs.data[i],test.TOP.cpu_1.cpu_regs.data[i]);
            26: $display("s10  : %d - 0x%h", test.TOP.cpu_1.cpu_regs.data[i],test.TOP.cpu_1.cpu_regs.data[i]);
            27: $display("s11  : %d - 0x%h", test.TOP.cpu_1.cpu_regs.data[i],test.TOP.cpu_1.cpu_regs.data[i]);
            28: $display("t3   : %d - 0x%h", test.TOP.cpu_1.cpu_regs.data[i],test.TOP.cpu_1.cpu_regs.data[i]);
            29: $display("t4   : %d - 0x%h", test.TOP.cpu_1.cpu_regs.data[i],test.TOP.cpu_1.cpu_regs.data[i]);
            30: $display("t5   : %d - 0x%h", test.TOP.cpu_1.cpu_regs.data[i],test.TOP.cpu_1.cpu_regs.data[i]);
            31: $display("t6   : %d - 0x%h", test.TOP.cpu_1.cpu_regs.data[i],test.TOP.cpu_1.cpu_regs.data[i]);
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
