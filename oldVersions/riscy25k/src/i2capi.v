module i2c_api (
    input clk,
    input [7:0]data,
    input [7:0]data2,
    input [6:0]address,
    input [7:0] cmd,
    input enable,
    input doubleData,
    output reg [1:0] instruction,
    output reg enable_i2c,
    output reg api_complete,
    output reg [7:0] byteToSend,
    input i2c_error,
    output reg error=0,
    input i2c_complete
);

    localparam INST_START_TX = 0;
    localparam INST_STOP_TX = 1;
    localparam INST_READ_BYTE = 2;
    localparam INST_WRITE_BYTE = 3;
    reg [3:0] state=0;
    reg [3:0] next_state=0;
    localparam STATE_IDLE = 0;
    localparam STATE_START_TX =   1;
    localparam STATE_ADDR = 2;
    localparam STATE_CMD =  3;
    localparam STATE_DATA = 4;
    localparam STATE_STOP = 5;
    localparam STATE_WAIT_FOR_I2C = 6;
    localparam STATE_DATA2 = 7;

    reg processStarted = 0;
    always@(posedge clk) begin
        case(state)
        STATE_IDLE:begin
            api_complete <= 1;
            enable_i2c <= 0;
            if(enable) begin
                // api_complete <= 0;
                state <= STATE_START_TX;
                error <= 0;
            end

        end
        STATE_START_TX:begin
            api_complete <= 0;
            instruction <= INST_START_TX;
            enable_i2c <= 1;
            state <= STATE_WAIT_FOR_I2C;
            next_state <= STATE_ADDR;
        end
        STATE_WAIT_FOR_I2C: begin
            api_complete <= 0;
            if(i2c_error)
                state <= STATE_IDLE;
            else
            if (~processStarted && ~i2c_complete)
                processStarted <= 1;
            else if (i2c_complete && processStarted) begin
                state <= next_state;
                processStarted <= 0;
                enable_i2c <= 0;
            end
        end
        STATE_ADDR:begin
            api_complete <= 0;
            instruction <= INST_WRITE_BYTE;
            enable_i2c <= 1;
            byteToSend <= {address,1'b0};
            state <= STATE_WAIT_FOR_I2C;
            next_state <= STATE_CMD;
        end
        STATE_CMD:begin
            api_complete <= 0;
            instruction <= INST_WRITE_BYTE;
            enable_i2c <= 1;
            byteToSend <= cmd;
            state <= STATE_WAIT_FOR_I2C;
            next_state <= STATE_DATA;
        end
        STATE_DATA:begin
            api_complete <= 0;
            instruction <= INST_WRITE_BYTE;
            enable_i2c <= 1;
            byteToSend <= data;
            state <= STATE_WAIT_FOR_I2C;
            if(doubleData==1'b0)
                next_state <= STATE_STOP;
            else
                next_state <= STATE_DATA2;
        end
        STATE_DATA2:begin
            api_complete <= 0;
            instruction <= INST_WRITE_BYTE;
            enable_i2c <= 1;
            byteToSend <= data2;
            state <= STATE_WAIT_FOR_I2C;
            next_state <= STATE_STOP;
        end
        STATE_STOP:begin
            api_complete <= 0;
            instruction <= INST_STOP_TX;
            enable_i2c <= 1;
            state <= STATE_WAIT_FOR_I2C;
            next_state <= STATE_IDLE;
        end
        endcase
    end

endmodule