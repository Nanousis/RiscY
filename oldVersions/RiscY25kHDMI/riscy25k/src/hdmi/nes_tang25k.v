//
// NES top level for Sipeed Tang 25K
// 
//

// `timescale 1ns / 100ps

module NES_Tang25k(
    input sys_clk,

    input s1,
    input reset,
    input           wen,
    input [10:0]    write_addr,
    input [7:0]     write_data,
    // HDMI TX
    output       tmds_clk_n,
    output       tmds_clk_p,
    output [2:0] tmds_d_n,
    output [2:0] tmds_d_p
);

`include "nes_tang25k.vh"


reg sys_resetn = 0;
reg [7:0] reset_cnt = 255;
always@(posedge sys_clk)    begin
    reset_cnt <= reset_cnt == 0 ? 0 : reset_cnt -1;
    if(reset_cnt == 0)
        sys_resetn <= ~reset;
end

  wire clk_usb;
  wire clk;

  // HDMI domain clocks
  wire clk_p;     // 720p pixel clock: 74.25 Mhz
  wire clk_p5;    // 5x pixel clock: 371.25 Mhz
  // for 480p as it currently is, 480p pixel clock: 27 Mhz
  // 5x pixel clock: 135 Mhz
  wire pll_lock;
    Gowin_PLL480 clock480p(
        .lock(pll_lock), //output lock
        .clkout0(clk_p5), //output clkout0
        .clkin(sys_clk) //input clkin
    );
    Gowin_CLKDIV clk_div (
      .clkout(clk_p),
      .hclkin(clk_p5),
      .resetn(sys_resetn & pll_lock)
    );

// HDMI output
nes2hdmi u_hdmi (
    .clk(sys_clk), .resetn(sys_resetn),
    .wen(wen), .write_addr(write_addr), .write_data(write_data),
    .clk_pixel(clk_p), .clk_5x_pixel(clk_p5), .locked(pll_lock),
    .tmds_clk_n(tmds_clk_n), .tmds_clk_p(tmds_clk_p),
    .tmds_d_n(tmds_d_n), .tmds_d_p(tmds_d_p)
);


endmodule