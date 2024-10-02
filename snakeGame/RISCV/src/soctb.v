`ifndef SYNTHESIS

module test();
  reg clk = 0;
  wire [5:0] led;
  reg btn1= 1;
  reg btn2= 1;

  reg reset=0;
  wire io_sda;
  wire io_scl;
    wire D1,D2,D3,D4,Dp,A,B,C,D,E,F,G;
 top TOP(
        .clk(clk),
        .led(led),
        .io_sda(io_sda),
        .io_scl(io_scl),
        .D1(D1), 
        .D2(D2), 
        .D3(D3), 
        .D4(D4),
        .Dp(Dp), 
        .A(A), 
        .B(B), 
        .C(C), 
        .D(D), 
        .E(E), 
        .F(F), 
        .G(G),
        .btn1(btn1),
        .btn2(btn2)
    );

 always
    #1  clk = ~clk;

    initial begin
        $display("Starting TESTBENCH");
        #10 reset = 1;
        #10 btn1 =0;
        #100 
        $display("REG 1 is %d",test.TOP.cpu_1.cpu_regs.data[1]);
        $display("REG 2 is %d",test.TOP.cpu_1.cpu_regs.data[2]);
        $display("REG 3 is %d",test.TOP.cpu_1.cpu_regs.data[3]);
        $display("REG 4 is %d",test.TOP.cpu_1.cpu_regs.data[4]);
        $display("REG 5 is %d",test.TOP.cpu_1.cpu_regs.data[5]);

        #1000 $finish;
    end
    integer i;
    initial begin
        $dumpfile("ZSOC.vcd");
        $dumpvars(0,test);
        for (i = 0; i < 32; i = i + 1) begin
            $dumpvars(1, test.TOP.cpu_1.cpu_regs.data[i]);
        end
        for (i = 0; i < 64; i = i + 1) begin
            $dumpvars(1, test.TOP.text.charMemory[i]);
        end
        for (i = 0; i < 16; i = i + 1) begin
            $dumpvars(1, test.TOP.mem.data_mem[i]);
        end
    end
endmodule
`endif
