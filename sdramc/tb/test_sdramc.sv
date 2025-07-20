//
// SDRAM
//   data width=32  bank width=2  row width=11  column width=8
//   tRP=3  tRFC=9  tMRD=3  tRCD=2  LWR=2  CL=2
//
`timescale 1ns / 1ps
//
`default_nettype none

module testbench;

  logic rst;
  logic clk = 1;
  localparam clk_tk = 10;
  always #(clk_tk / 2) clk = ~clk;
  reg [100*8] test_str;

  //------------------------------------------------------------------------
  // sdram
  //------------------------------------------------------------------------

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


wire ready;
wire cpu_clk = clk;
wire sdram_clk = clk;
wire reset_n = ~rst;
reg ren = 0;  // read enable
reg wen = 0;  // write enable
reg [31:0] address = 0;
reg [(32*16)-1:0] data_in = 0;  // data to write
wire [(32*16)-1:0] data_out;
reg [3:0] mask = 4'b0000;  // data mask for write operations, all bytes writable
reg [7:0] len = 8'h00;  // data length for write operations, 1 byte
//------------------------------------------------------------------------
// ram_controller
//------------------------------------------------------------------------
ram_controller ram_controller_inst
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

    .cpu_clk,
    .sdram_clk,
    .reset_n,
    .ren,
    .wen,
    .address,
    .data_in,
    .mask,
    .len,
    .data_out,
    .ready
);


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

  //------------------------------------------------------------------------
  // sdram_controller
  //------------------------------------------------------------------------



  //------------------------------------------------------------------------

  localparam SDRAM_BANKS_WIDTH = 2;
  localparam SDRAM_ROWS_WIDTH = 11;
  localparam SDRAM_COLS_WIDTH = 8;

  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, testbench);
    ren = 0;  // disable read
    test_str = "testbench: start";
    rst = 1;
    #clk_tk;
    #clk_tk;
    #clk_tk;
    rst = 0;  // release reset
    while(!ready) #clk_tk;  // wait for ready signal
    #clk_tk;
    #clk_tk;
    #clk_tk;
    #clk_tk;
    #clk_tk;
    $display("Testbench: ready signal received");
    test_str = "writting data";
    wen = 1;  // enable write
    address = 32'h00000000;  // write to address 0
    data_in = 32'h00000000;  // data to write
    #clk_tk;
    while(!ready) #clk_tk;  // wait for ready signal
    wen = 0;  // disable write
    $display("Testbench: write operation completed");
    test_str = "finished writting data";
    #clk_tk;
    #clk_tk;
    #clk_tk;
    #clk_tk;
    #clk_tk;
    test_str = "reading data";
    ren = 1;  // enable read
    address = 32'h00000000;  // read from address 0
    #clk_tk;
    while(!ready) #clk_tk;  // wait for ready signal
    ren = 0;  // disable read
    $display("Testbench: read operation completed");
    test_str = "finished reading data";
    if (data_out == data_in) begin
      $display("\033[1;32mTest passed:\033[0m read data matches written data");
    end else begin
      $display("\033[1;31mTest failed:\033[0m: read data does not match written data");
      $display("Expected: 32'h12345678, Got: %h", data_out);
    end
    #clk_tk;

    // test 2 writting 1 byte
    test_str = "Writting 1 byte";
    wen = 1;  // enable write
    address = 32'h0_00; // row 0, column 0
    data_in = 32'hFFEEDDCC;  // write 1 byte of data
    mask = 4'b0111;  // write only the first byte
    #clk_tk;
    while(!ready) #clk_tk;  // wait for ready signal
    wen = 0;  // disable write
    $display("Testbench: write operation completed");
    test_str = "finished writting data";
    #clk_tk;
    #clk_tk;
    #clk_tk;
    test_str = "reading data";
    mask = 4'b0000;
    ren = 1;  // enable read
    address = 32'h00000000;  // read from address 0
    #clk_tk;
    while(!ready) #clk_tk;  // wait for ready signal
    ren = 0;  // disable read
    $display("Testbench: read operation completed");
    test_str = "finished reading data";
    if (data_out == 32'hff345678) begin
      $display("\033[1;32mTest passed:\033[0m read data matches written data");
    end else begin
      $display("\033[1;31mTest failed:\033[0m: read data does not match written data");
      $display("Expected: 32'h12345678, Got: %h", data_out);
    end

    // test3 burst read/write test
    test_str = "Writting 1 byte";
    wen = 1;  // enable write
    address = 32'h0_00; // row 0, column 0
    data_in[(0*32)+:32] = 32'hdeadbeef;  // write 1 byte of data
    data_in[(1*32)+:32] = 32'hFFEEDDCC;  // write 1 byte of data
    data_in[(2*32)+:32] = 32'h996666AA;  // write 1 byte of data
    data_in[(15*32)+:32] = 32'h11111111;  // write 1 byte of data

    len = 8'd15;
    mask = 4'b000;  // write only the first byte
    #clk_tk;
    while(!ready) #clk_tk;  // wait for ready signal
    wen = 0;  // disable write
    $display("Testbench: write operation completed");
    test_str = "finished writting data";
    #clk_tk;
    #clk_tk;
    #clk_tk;
    test_str = "reading data";
    mask = 4'b0000;
    ren = 1;  // enable read
    address = 32'h00000000;  // read from address 0
    #clk_tk;
    while(!ready) #clk_tk;  // wait for ready signal
    ren = 0;  // disable read
    $display("Testbench: read operation completed");
    test_str = "finished reading data";
    if (data_out == data_in) begin
      $display("\033[1;32mTest passed:\033[0m read data matches written data");
    end else begin
      $display("\033[1;31mTest failed:\033[0m: read data does not match written data");
      $display("Expected: 32'h12345678, Got: %h", data_out);
    end
    test_str = "Burst read/write test";

    #clk_tk;
    #clk_tk;
    #clk_tk;
    #clk_tk;
    #clk_tk;




    $finish;

  end

endmodule

`default_nettype wire