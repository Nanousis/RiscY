module top(
  input clk,
  input resetn,
  input s2,

  output led,

  output       tmds_clk_n_1,
  output       tmds_clk_p_1,
  output [2:0] tmds_d_n_1,
  output [2:0] tmds_d_p_1
);
    // for 640x480 you need ~127Mhz pll
    // for 1280x720 you need ~380Mhz pll
    // for 1920x1080 ~742Mhz but the closest with the 50mhz clock that is stable is 737.5Mhz
    

Gowin_PLL_720p Gowin_PLL_inst(
    .lock(pll_lock), //output lock
    .clkout0(clk_p5), //output clkout0
    .clkin(clk) //input clkin
);

 Gowin_CLKDIV Gowin_CLKDIV_inst(
     .clkout(clk_p), //output clkout
     .hclkin(clk_p5), //input hclkin
     .resetn(pll_lock) //input resetn
 );

//div_5clk div_5clk_inst(
//.clk(clk_p5),
//.rst_n(pll_lock),
//.clk_out(clk_p)
//);

Reset_Sync u_Reset_Sync (
  .resetn(sys_resetn),
  .ext_reset(~resetn & pll_lock),
  .clk(clk_p)
);

svo_hdmi svo_hdmi_inst_1 (
	.clk(clk_p),
	.resetn(sys_resetn),

	// video clocks
	.clk_pixel(clk_p),
	.clk_5x_pixel(clk_p5),
	.locked(pll_lock),

    // text mode signals 
    .clk_cpu(clk),
    .wen(wen),
    .wdataText(text_data),
    .wdataAttr(text_data),
    .waddr(waddr),

	// output signals
	.tmds_clk_n(tmds_clk_n_1),
	.tmds_clk_p(tmds_clk_p_1),
	.tmds_d_n(tmds_d_n_1),
	.tmds_d_p(tmds_d_p_1)
);


reg [23:0] led_cnt;
reg wen;
reg [7:0] text_data;
reg [20:0] cnt;
reg [10:0] waddr;
always @(posedge clk or negedge sys_resetn) begin
    if (~sys_resetn)
    begin
        waddr <= 11'b0;
        cnt <= 21'b0;
        led_cnt <= 'd0;
        text_data = 8'h00;
    end
    else
    begin
        cnt <= cnt+1;
        led_cnt <= led_cnt + 'b1;
        if(cnt == 21'b0 &&s2==1) begin
            waddr <= waddr + 11'b1;
            wen <= 1'b1;
            text_data <= text_data + 8'h01;
        end
        else begin
            wen <= 1'b0;
        end

    end
end

assign led = led_cnt[23];

endmodule

module Reset_Sync (
 input clk,
 input ext_reset,
 output resetn
);

 reg [3:0] reset_cnt = 0;
 
 always @(posedge clk or negedge ext_reset) begin
     if (~ext_reset)
         reset_cnt <= 4'b0;
     else
         reset_cnt <= reset_cnt + !resetn;
 end
 
 assign resetn = &reset_cnt;

endmodule

// module div_5clk(
// input clk,
// input rst_n,
// output clk_out
// );

// reg [3:0] cnt;
// reg clk_p;
// reg clk_n;

// always@(posedge clk or negedge rst_n)begin
//     if(!rst_n)begin
//         cnt<=1'b0;
//     end
//     else if(cnt==3'b100)begin
//         cnt<='b0;
//     end
//     else
//         cnt<=cnt+1'b1;
// end    

// always@(posedge clk or negedge rst_n)begin
//     if(!rst_n)begin
//         clk_p<='b0;
//     end
//     else if(cnt<=1'b1)begin
//         clk_p<=1'b1;
//     end
//     else begin
//         clk_p<=1'b0;
//     end
// end

// always@(negedge clk )begin//注意这里是低电平有效，而不是打一拍（延迟一个时钟周期），所以只延迟半个时钟周期
//     clk_n <= clk_p;
// end

// assign  clk_out = clk_p | clk_n;
    
// endmodule