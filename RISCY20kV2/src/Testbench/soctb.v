`ifndef SYNTHESIS
`timescale 1ns/1ns
module test();
  reg clk = 0;
  reg sdram_clk=0;
  reg vga_clk=0;
  wire [5:0] led;
  reg btn1= 1;
  reg btn2= 1;

  reg reset=0;
  wire io_sda;
  wire io_scl;
    // wire D1,D2,D3,D4,Dp,A,B,C,D,E,F,G;


// 'sdram' wires between 'sdram' and 'sdram_controller'
wire O_sdram_clk;
wire O_sdram_cke;
wire O_sdram_cs_n;  // chip select
wire O_sdram_cas_n;  // columns address select
wire O_sdram_ras_n;  // row address select
wire O_sdram_wen_n;  // write enable
wire [31:0] IO_sdram_dq;  // 32 bit bidirectional data bus
wire [10:0] O_sdram_addr;  // 11 bit multiplexed address bus
wire [1:0] O_sdram_ba;  // two banks
wire [3:0] O_sdram_dqm;  // data mask (byte enable)

// sdr2mx32 sdram (  // note: very slow until it reaches initialized state at ~328 us
mt48lc2m32b2 sdram (

    .Clk(O_sdram_clk),
    .Cke(O_sdram_cke),
    .Cs_n(O_sdram_cs_n),
    .Cas_n(O_sdram_cas_n),
    .Ras_n(O_sdram_ras_n),
    .We_n(O_sdram_wen_n),
    .Dq(IO_sdram_dq),
    .Addr(O_sdram_addr),
    .Ba(O_sdram_ba),
    .Dqm(O_sdram_dqm)
);

top TOP
(   
    .O_sdram_clk,
    .O_sdram_cke,
    .O_sdram_cs_n,
    .O_sdram_cas_n,
    .O_sdram_ras_n,
    .O_sdram_wen_n,
    .IO_sdram_dq,
    .O_sdram_addr,
    .O_sdram_ba,
    .O_sdram_dqm,

    .clk(clk),
    .vga_clk(vga_clk),
    .sdram_clk(sdram_clk),

    .flashMiso(),
    .flashClk(),
    .flashMosi(),
    .flashCs(),

    .uart_rx(0),
    .uart_tx(),

    .btnDownR(1),
    .btnUpR(1),
    .btnLeftR(1),
    .btnRightR(1),

    .btnDownL(1),
    .btnUpL(1),
    .btnLeftL(1),
    .btnRightL(1)
);

always #6 sdram_clk = ~sdram_clk; // 108 MHz
always #37 vga_clk = ~vga_clk; // 13.5 MHz
always #18  clk = ~clk; // 27 MHz
    
    initial begin
        $display("Starting TESTBENCH");
        #10 reset = 1;
        #10 btn1 =0;
        #100 

        repeat(100_000) @(posedge clk);

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
        for(i = 2840;i<2840+100; i = i +1)begin
           $display("Memory stuff %d: %x", i,test.TOP.mem.data_mem[i]);
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
