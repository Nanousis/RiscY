module btn_debouncer(
    input clk,
    input btn,
    output reg btn_debounced
);
    parameter CNT_MAX = 25'd500000;
    reg [25:0] counter=0;
    reg state=0;
    localparam STATE_IDLE = 1'b0;
    localparam STATE_DEBOUNCING = 1'b1;


    always@(posedge clk)
    begin
        case(state)
            STATE_IDLE:
            begin
                counter<=0;
                if(btn==0)
                begin
                    btn_debounced<=0;
                    state<=STATE_DEBOUNCING;
                end
                else
                begin
                    btn_debounced<=1;
                    state<=STATE_IDLE;
                end
            end
            STATE_DEBOUNCING:
            begin
                counter<=counter+1;
                btn_debounced<=1;
                if(counter>=CNT_MAX)
                begin
                        state<=STATE_IDLE;
                    // if(btn==1)
                    // begin
                    // end
                    // else
                    // begin
                    //     state<=STATE_DEBOUNCING;
                    // end
                end
            end
        endcase
    end

endmodule