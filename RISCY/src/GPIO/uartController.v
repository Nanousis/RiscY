module uartController(
    input clk,
    input reset,
    input ren,
    input wen,
    input uart_rx,
    output uart_tx,
    input [1:0]     address,
    output reg [31:0] data_out=32'hdeadbeaf
);

reg new_data_in=0;
wire uart_ready;
wire [31:0] uart_data_out;

localparam READY = 1;
localparam DATAOUT = 0;
reg [4:0] stateDebug=0;


always @(posedge clk or negedge reset) begin
    if(reset==0) begin
        data_out <= 0;
        new_data_in <= 0;
        //debug to see where the adress is sent
        stateDebug <= 0;
    end
    else begin
        if(wen||ren)
        begin
            case(address)
            // this is not correct when you get from ren=1 to reading ready
            // this returns 0 instead of 1
            READY: begin
                stateDebug <= 1;
                if(ren)
                    data_out <= (new_data_in) ? 32'hffffffff : 0;
            end
            DATAOUT: begin
                stateDebug <= 5;
                if(ren)begin
                        data_out <= {24'b0,uart_data_out};
                        new_data_in <= 0;
                end
                if(wen)
                begin
                    data_out <= 32'hdeadbeaf;
                end
            end
            default: begin
                stateDebug <= 11;
                // data_out <= 0;
                data_out <= {24'b0,uart_data_out};  
            end
            endcase
        end
        else
        if(uart_ready==1)
        begin
            new_data_in <= 1;
        end
    end

end

uart uart_inst(
    .clk(clk),
    .uart_rx(uart_rx),
    .uart_tx(uart_tx),
    .data_out(uart_data_out),
    .byteReady(uart_ready),
    .btn1(1'b1)
);

endmodule