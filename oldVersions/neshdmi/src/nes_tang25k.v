//
// NES top level for Sipeed Tang 25K
// 
//

// `timescale 1ns / 100ps

module NES_Tang25k(
    input sys_clk,

    input s1,
    input reset,
    // HDMI TX
    output       tmds_clk_n,
    output       tmds_clk_p,
    output [2:0] tmds_d_n,
    output [2:0] tmds_d_p
);


reg sys_resetn = 0;
reg [7:0] reset_cnt = 255;
always@(posedge sys_clk)    begin
    reset_cnt <= reset_cnt == 0 ? 0 : reset_cnt -1;
    if(reset_cnt == 0)
        sys_resetn <= ~reset;
end

localparam STATE_IDLE = 0;
localparam STATE_DEBOUNCE = 1;
reg state=0;
reg [25:0] counter = 0;

reg wen=0;
reg [9:0] addr=0;
reg [7:0] data=0;

always@(posedge sys_clk)    
begin
  case(state)
      STATE_IDLE: begin
        counter <= 0;
          if(s1 == 1)
          begin
            addr <= addr + 1;
            state <= STATE_DEBOUNCE;
            wen <= 1;
            if(data==127)
            begin 
              data<=0;
            end
            else
            begin
              data <= data + 1;
            end
          end
      end
      STATE_DEBOUNCE: begin
          counter <= counter + 1;
          wen <= 0;
          if(counter == 1000000)
            begin
              state <= STATE_IDLE;
            end
      end
      default: state <= STATE_IDLE;
    endcase

end

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
    .wen(wen), .write_addr(addr), .write_data(data),
    .clk_pixel(clk_p), .clk_5x_pixel(clk_p5), .locked(pll_lock),
    .tmds_clk_n(tmds_clk_n), .tmds_clk_p(tmds_clk_p),
    .tmds_d_n(tmds_d_n), .tmds_d_p(tmds_d_p)
);


endmodule