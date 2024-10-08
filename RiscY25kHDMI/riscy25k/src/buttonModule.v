module buttonModule(
    input clk,
    input btnDown,
    input btnUp,
    input btnLeft,
    input btnRight,
    input ren,
    input [31:0] address,
    output reg data_out
);
localparam STATE_IDLE = 2'b00;
localparam STATE_DEBOUNCE = 2'b01;
reg [21:0] txCounter;
reg [1:0] state;
reg btnLeftreg=1, btnRightreg=1;


always@(posedge clk)
begin
    if(ren == 1'b1)
    begin
        case (address[2:0])
            3'h0: data_out = btnDown;
            3'h1: data_out = btnUp;
            3'h2: data_out = btnLeft;
            3'h3: data_out = btnRight;
            default: data_out = 32'b1;
        endcase
    end
    case(state)
        STATE_IDLE: begin
            btnLeftreg<=1;
            btnRightreg<=1;
            if (btnLeft == 0) begin
                btnLeftreg<=0;
                state <= STATE_DEBOUNCE;
                txCounter <= 0;
            end
            if (btnRight == 0) begin
                btnRightreg<=0;
                state <= STATE_DEBOUNCE;
                txCounter <= 0;
            end
        end
        STATE_DEBOUNCE: begin
                txCounter <= txCounter + 1;
                if(txCounter ==22'hFF)
                begin
                btnLeftreg<=1;
                btnRightreg<=1;
                end
                if (txCounter == 22'hFFFFFF) begin
                    txCounter <=0;
                    if (btnLeft == 1&&btnRight==1) 
                        state <= STATE_IDLE;
                end else
                    state <= STATE_DEBOUNCE;
        end
    endcase
end

endmodule