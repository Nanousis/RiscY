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

    // Debounced button signals
    wire stableDown, stableUp, stableLeft, stableRight;

    // Instantiate debounce modules for each button
    DebounceFSM debounceDown (
        .clk(clk),
        .btn_in(btnDown),
        .btn_stable(stableDown)
    );

    DebounceFSM debounceUp (
        .clk(clk),
        .btn_in(btnUp),
        .btn_stable(stableUp)
    );

    DebounceFSM debounceLeft (
        .clk(clk),
        .btn_in(btnLeft),
        .btn_stable(stableLeft)
    );

    DebounceFSM debounceRight (
        .clk(clk),
        .btn_in(btnRight),
        .btn_stable(stableRight)
    );

    // Read debounced signals based on the address
    always @(posedge clk) begin
        if (ren == 1'b1) begin
            case (address[3:0])
                3'h0: data_out = stableDown;
                3'h1: data_out = stableUp;
                3'h2: data_out = stableLeft;
                3'h3: data_out = stableRight;
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

    reg [21:0] counter;
    reg [1:0] state = IDLE;
    reg btn_last;
    reg newChange;
    reg dff1, dff2, dff3;

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
