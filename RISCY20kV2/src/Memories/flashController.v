// Register-mapped front-end for flashNavigator
// Byte address map:
// 0x00 READY      (R): 0xFFFFFFFF when idle, else 0x0
// 0x01 READEN     (R/W): W!=0 arms a read op (auto-clears after done)
// 0x02 WRITEEN    (R/W): W!=0 arms a write op (auto-clears after done)
// 0x04 ADDRESS    (R/W): [23:0] target address
// 0x08 DATAIN     (R/W): write data (32-bit)
// 0x0C DATAOUT    (R):  last read data (32-bit)

module flashController #(
  parameter integer SCK_DIV = 4,
  `ifdef TESTBENCH
  parameter [23:0]  BASE    = 24'h000000
  `else
  parameter [23:0]  BASE    = 24'h500000
  `endif
)(
  input  wire        clk,
  input  wire        reset_n,

  input  wire        ren,
  input  wire        wen,
  input  wire [7:0]  address,
  input  wire [31:0] data_in,
  output reg  [31:0] data_out = 32'hDEAD_BEEF,

  // SPI pins to flash
  input  wire        flashMiso,
  output wire        flashClk,
  output wire        flashMosi,
  output wire        flashCs
);

  // Map
  localparam READY    = 8'h00;
  localparam READEN   = 8'h01;
  localparam WRITEEN  = 8'h02;
  localparam ADDRESSR = 8'h04;
  localparam DATAINR  = 8'h08;
  localparam DATAOUTR = 8'h0C;

  // Navigator wires/regs
  reg         flash_enable = 1'b0;
  reg         req_read  = 1'b0;
  reg         req_write = 1'b0;
  reg [23:0]  nav_addr  = 24'h0;
  reg [31:0]  nav_wdata = 32'h0;

  wire        nav_ready;
  wire [31:0] nav_rdata;

  // Operation tracking: wait for busy then done
  reg op_active = 1'b0;
  reg saw_busy  = 1'b0;     // became not-ready at least once
  reg nav_ready_q = 1'b1;
  reg first_run = 1'b1;
  always @(posedge clk or negedge reset_n) begin
    if (!reset_n) begin
      data_out     <= 32'h0;
      nav_addr     <= 24'h0;
      nav_wdata    <= 32'h0;
      req_read     <= 1'b0;
      req_write    <= 1'b0;
      flash_enable <= 1'b0;
      op_active    <= 1'b0;
      saw_busy     <= 1'b0;
      nav_ready_q  <= 1'b1;
    end else begin
      if(first_run == 1'b0) begin
        nav_ready_q <= nav_ready;
      end
      else begin
        nav_ready_q <= 1'b0;
      end

      // Reads
      if (ren) begin
        case (address)
          READY:    data_out <= nav_ready ? 32'hFFFF_FFFF : 32'h0000_0000;
          READEN:   data_out <= req_read  ? 32'hFFFF_FFFF : 32'h0;
          WRITEEN:  data_out <= req_write ? 32'hFFFF_FFFF : 32'h0;
          ADDRESSR: data_out <= {8'h00, nav_addr};
          DATAINR:  data_out <= nav_wdata;
          DATAOUTR: data_out <= nav_rdata;
          default:  data_out <= {address, 24'h0};
        endcase
      end

      // Writes
      if (wen) begin
        case (address)
          READEN:   req_read  <= (data_in != 32'h0);
          WRITEEN:  req_write <= (data_in != 32'h0);
          ADDRESSR: nav_addr  <= data_in[23:0];
          DATAINR:  nav_wdata <= data_in;
          default: ;
        endcase
      end

      // Start op when idle and a request present
      if (!op_active && (req_read || req_write)) begin
        op_active    <= 1'b1;
        flash_enable <= 1'b1;
        saw_busy     <= 1'b0;
      end

      // Track busy seen
      if (op_active && !nav_ready)
        saw_busy <= 1'b1;
      // if(saw_busy && req_read)begin
      //   req_read <= 1'b0;
      // end
      // Finish when we've seen it go busy and then back to ready
      if (op_active && saw_busy && nav_ready && !nav_ready_q) begin
        if(first_run)
        begin
          first_run <= 1'b0;
          $display("Flash operation completed successfully.");
        end
        else
        begin
          op_active    <= 1'b0;
          flash_enable <= 1'b0;
          req_read     <= 1'b0;
          req_write    <= 1'b0;
          $display("Flash operation completed successfully.");
        end
      end
    end
  end

  flashNavigator navigator (
    .clk          (clk),
    .flash_enable (flash_enable),
    .readAddress  (nav_addr + BASE),
    .writeAddress (nav_addr + BASE),
    .dataToWrite  (nav_wdata),
    .write_enable (op_active && req_write),
    .read_enable  (op_active && req_read),

    .flashMiso    (flashMiso),
    .flashClk     (flashClk),
    .flashMosi    (flashMosi),
    .flashCs      (flashCs),

    .flash_ready  (nav_ready),
    .data_out     (nav_rdata)
  );

endmodule
