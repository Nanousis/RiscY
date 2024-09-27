module buttonModule(
    input clk,
    input btn1,
    input btn2,
    input ren,
    input [31:0] address,
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
        case (address)
            32'h800: data_out = btn1reg;
            32'h801: data_out = btn2reg;
            32'h802: data_out = btn1;
            32'h803: data_out = btn2;
            default: data_out = 32'b1;
        endcase
    end
    case(state)
        STATE_IDLE: begin
            btn1reg<=1;
            btn2reg<=1;
            if (btn1 == 0) begin
                btn1reg<=0;
                state <= STATE_DEBOUNCE;
                txCounter <= 0;
            end
            if (btn2 == 0) begin
                btn2reg<=0;
                state <= STATE_DEBOUNCE;
                txCounter <= 0;
            end
        end
        STATE_DEBOUNCE: begin
                txCounter <= txCounter + 1;
                if(txCounter ==22'hFF)
                begin
                btn1reg<=1;
                btn2reg<=1;
                end
                if (txCounter == 22'hFFFFFF) begin
                    txCounter <=0;
                    if (btn1 == 1&&btn2==1) 
                        state <= STATE_IDLE;
                end else
                    state <= STATE_DEBOUNCE;
        end
    endcase
end

endmodule