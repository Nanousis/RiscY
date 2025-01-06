
module simon_decrypt #(parameter n=16, m=4)
(
    clk,
    rst,
    ciphertext,
    key,
    plaintext,
    en,
    done
);
    input clk, rst, en;
    input [2*n-1:0] ciphertext;
    input [n*m-1:0] key;
    output reg [2*n-1:0] plaintext;
    output done;

    reg [n*m-1:0] prev_key;
    localparam s_idle = 3'b00;
    localparam s_enable = 3'b01;
    localparam s_busy = 3'b10;
    localparam s_decr = 3'b11;
    localparam s_done = 3'b100;
    localparam NUM_ROUNDS = T(n,m);

    reg [2:0] current_state; 
    wire [2:0] next_state;
    reg [7:0] current_counter;
    wire [7:0] next_counter;
    reg [7:0] next_counter_decr;
    reg [2*n-1:0] y_s;  // Input to inverse_round (ciphertext initially)
    wire [2*n-1:0] next_y, x_s;
    wire [n-1:0] k;
    wire [n*m-1:0] key_in;
    wire [n-1:0] key_i;
    reg [n-1:0] key_schedule [NUM_ROUNDS-1:0];
    wire [2*n-1:0] next_plaintext;
    round_inv #(.n(n), .m(m)) ir (.y(y_s), .x_s(x_s), .k(k));
    key_expansion #(.n(n), .m(m)) key_ex(.key(key_in), .i(next_counter), .key_i(key_i));
    reg [7:0] init_counter = 0;

    always @(posedge(clk)) begin
        if (rst) begin
            current_counter <= 8'h00;
            current_state <= s_idle;
            y_s <= 0;
            plaintext <= 0;
            next_counter_decr <= 8'h00;
        end
        else begin
            current_state <= next_state;
            current_counter <= next_counter;
            y_s <= next_y;
            plaintext <= next_plaintext;
            if (current_state == s_enable) begin
                prev_key <= key;
                key_schedule[NUM_ROUNDS-1] <= key[n-1:0];
                next_counter_decr <= 0;
            end
            else if (current_state == s_busy) begin
                // Populate key_schedule in reverse order
                key_schedule[NUM_ROUNDS-1 - next_counter] <= key_i; 
            end
            else if(current_state == s_decr) begin
                next_counter_decr <= next_counter_decr + 1;
                if(next_counter_decr == NUM_ROUNDS-1) begin
                    plaintext <= x_s;
                end
            end
        end
    end

    // Key selection: reverse order for decryption
    assign k = key_schedule[next_counter_decr];

    assign key_in = (current_counter < m) ? key 
                                        : {key_schedule[NUM_ROUNDS-1 - current_counter], 
                                           key_schedule[NUM_ROUNDS - current_counter],
                                           key_schedule[NUM_ROUNDS+1 - current_counter],
                                           key_schedule[NUM_ROUNDS+2 - current_counter]};

    // Counter for decryption rounds
    assign next_counter = (current_state == s_enable) ? 0 : 
                         (current_state == s_busy) ? (current_counter + 1) : current_counter;

    // State transitions
    assign next_state = (rst == 1) ? s_idle :
                        (en == 1) ? s_enable :
                        (current_state == s_enable) ? s_busy :
                        (current_state == s_busy && current_counter < (NUM_ROUNDS-1)) ? s_busy :
                        (current_state == s_busy && current_counter >= (NUM_ROUNDS-1)) ? s_decr :
                        (current_state == s_decr && next_counter_decr <(NUM_ROUNDS-1)) ? s_decr :
                        (current_state == s_decr && next_counter_decr >= (NUM_ROUNDS-1)) ? s_done :
                        (current_state == s_done) ? s_done :
                        s_idle;

    assign done = (current_state == s_done) ? 1 : 0;

    // Feeding input to inverse_round
    assign next_y = (current_state != s_decr) ? ciphertext : x_s;

    // Setting plaintext once decryption is done
    assign next_plaintext = (en == 1) ? 0 : 
                            (current_state == s_busy && next_state == s_done) ? x_s : plaintext;

    // Functions    
    function integer T;
        input integer n;
        input integer m;
        case(n)
            16: T = 32;
            24: T = 36;
            32: T = (m==3) ? 42 :
                  (m==4) ? 44 : -1;
            48: T = (m==2) ? 52 :
                  (m==3) ? 54 : -1;
            64: T = (m==2) ? 68 :
                  (m==3) ? 69 :
                  (m==4) ? 72 : -1;
            default: T = -1;
        endcase        
    endfunction
endmodule
