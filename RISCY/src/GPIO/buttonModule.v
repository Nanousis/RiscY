module buttonModule(
    input clk,
    input btnDown,
    input btnUp,
    input btnLeft,
    input btnRight,
    input ren,
    input [31:0] address,
    // output reg reset=1'b1,
    output reg data_out
);
localparam STATE_IDLE = 2'b00;
localparam STATE_DEBOUNCE = 2'b01;
reg [21:0] txCounter;
reg [1:0] state;
reg btn1reg=1, btn2reg=1;


always@(posedge clk)
begin
    if(ren == 1'b1)
    begin
        case (address[3:0])
            3'h0: data_out = btnDown;
            3'h1: data_out = btnUp;
            3'h2: data_out = btnLeft;
            3'h3: data_out = btnRight;
            default: data_out = 32'b1;
        endcase
    end
    // if(btnDown == 1'b0 && btnUp == 1'b0 && btnLeft == 1'b0 && btnRight == 1'b0)
    //     reset=1'b0;
    // else
    //     reset=1'b1;
end

endmodule