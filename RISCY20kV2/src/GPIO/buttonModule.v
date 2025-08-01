module buttonModule(
    input clk,
    input btnDownL,
    input btnUpL,
    input btnLeftL,
    input btnRightL,
    input btnDownR,
    input btnUpR,
    input btnLeftR,
    input btnRightR,
    input ren,
    input [31:0] address,
    output reg data_out
);

    // Debounced button signals
    wire stableDownL, stableUpL, stableLeftL, stableRightL;
    wire stableDownR, stableUpR, stableLeftR, stableRightR;

    // Instantiate debounce modules for each button
    DebounceFSM debounceDownL (
        .clk(clk),
        .btn_in(btnDownL),
        .btn_stable(stableDownL)
    );

    DebounceFSM debounceUpL (
        .clk(clk),
        .btn_in(btnUpL),
        .btn_stable(stableUpL)
    );

    DebounceFSM debounceLeftL (
        .clk(clk),
        .btn_in(btnLeftL),
        .btn_stable(stableLeftL)
    );

    DebounceFSM debounceRightL (
        .clk(clk),
        .btn_in(btnRightL),
        .btn_stable(stableRightL)
    );
    DebounceFSM debounceDownR (
        .clk(clk),
        .btn_in(btnDownR),
        .btn_stable(stableDownR)
    );

    DebounceFSM debounceUpR (
        .clk(clk),
        .btn_in(btnUpR),
        .btn_stable(stableUpR)
    );

    DebounceFSM debounceLeftR (
        .clk(clk),
        .btn_in(btnLeftR),
        .btn_stable(stableLeftR)
    );

    DebounceFSM debounceRightR (
        .clk(clk),
        .btn_in(btnRightR),
        .btn_stable(stableRightR)
    );

    // Read debounced signals based on the address
    always @(posedge clk) begin
        if (ren == 1'b1) begin
            case (address[3:0])
                3'h0: data_out = stableDownR;
                3'h1: data_out = stableUpR;
                3'h2: data_out = stableLeftR;
                3'h3: data_out = stableRightR;
                3'h4: data_out = stableDownL;
                3'h5: data_out = stableUpL;
                3'h6: data_out = stableLeftL;
                3'h7: data_out = stableRightL;
                default: data_out = 1'b1;
            endcase
        end
    end

endmodule

module DebounceFSM (
    input clk,
    input btn_in,        // Raw button input
    output reg btn_stable // Debounced button output
);
    localparam IDLE = 2'b00;
    localparam COUNTING = 2'b01;
    localparam STABLE = 2'b10;
    
    localparam DEBOUNCE_TIME = 22'd1_000_000; // Adjust based on clock frequency and debounce delay

    reg [21:0] counter=0;
    reg [1:0] state = IDLE;
    reg btn_last=0;
    reg newChange=0;
    reg dff1=0, dff2=0, dff3=0;

    always @(posedge clk) begin
        dff1 <= btn_in;
        dff2 <= dff1;
        dff3 <= dff2;
        case (state)
            IDLE: begin
                btn_stable <= btn_last;
                if(dff1==dff2&&dff2==dff3)begin
                    if (btn_in != btn_last) begin
                        newChange = dff3;
                        state <= COUNTING;
                        counter <= 0;
                    end
                end                
            end
            COUNTING: begin
                counter <= counter + 1;
                if (dff3!=newChange)
                begin
                    btn_last <= 1;
                    state<=IDLE;
                end
                if (counter == DEBOUNCE_TIME - 1) begin
                    state <= STABLE;
                    btn_last <= btn_in;
                end
            end
            STABLE: begin
                btn_stable <= btn_last;
                if (btn_in != btn_last) begin
                    state <= COUNTING;
                    counter <= 0;
                end
            end
        endcase
    end
endmodule
