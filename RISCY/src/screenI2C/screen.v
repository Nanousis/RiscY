
module screen
#(
    parameter STARTUP_WAIT = 32'd10000000,
    parameter address = 7'h3C
)
(
    input clk,
    output  [9:0] pixelAddress,
    input   [7:0] pixelData,
    inout io_sda,  // I2C data line (bi-directional)
    output io_scl  // I2C clock line
);

    localparam INST_START_TX = 0;
    localparam INST_STOP_TX = 1;
    localparam INST_READ_BYTE = 2;
    localparam INST_WRITE_BYTE = 3;
    reg [7:0] commandIndex = 16;
    reg [2:0] state = 0;
    reg [2:0] next_state = 0;
    reg [10:0] pixelCounter = 0;
    assign pixelAddress = pixelCounter;

    // I2C control signals
    wire [1:0] instructionI2C;
    wire i2c_complete;    
    wire sdaIn;
    reg i2c_enable;
    wire sdaOut;
    wire isSending;
    // this should be like this but it gets converted to a tristate buffer
    // if it's not a top level module. This does not exist on a tang nano
    // hence it is ommited. So error checking does not take place.
    // assign io_sda = (isSending) ? sdaOut : 1'bz;
    assign io_sda = (isSending) ? sdaOut : 1'b0;
    assign sdaIn = io_sda ? 1'b1 : 1'b0;
    assign io_scl = testscl;
    wire testscl;
    wire enableI2C;
    wire [7:0] dataToSend;
    wire i2c_error;
    i2c i2c_inst (
        .clk(clk),
        .sdaIn(sdaIn),
        .sdaOutReg(sdaOut),
        .isSending(isSending),
        .scl(testscl),
        .instruction(instructionI2C),
        .enable(enableI2C),
        .byteToSend(dataToSend),
        .byteReceived(),
        .error(i2c_error),
        .complete(i2c_complete)
    );
    //api signals
    wire api_complete;
    reg [7:0] data;
    reg [7:0] data2;
    reg [7:0] cmd;
    reg en_api;
    wire api_error;
    reg doubleData=0;
    i2c_api i2c_api_inst (
        .clk(clk),
        .data(data),
        .data2(data2),
        .address(address),
        .cmd(cmd),
        .enable(en_api),
        .instruction(instructionI2C),
        .enable_i2c(enableI2C),
        .doubleData(doubleData),
        .api_complete(api_complete),
        .byteToSend(dataToSend),
        .error(api_error),
        .i2c_error(i2c_error),
        .i2c_complete(i2c_complete)
    );

    // FSM states
    localparam STATE_IDLE = 3'd0;
    localparam STATE_INIT = 3'd1;
    localparam STATE_WAIT_API = 3'd2;
    localparam STATE_CHECK_FINISHED_INIT = 3'd3;
    localparam STATE_LOAD_IMAGE = 3'd4;
    localparam STATE_CHECK_IMG_FINISH = 3'd5;
    localparam STATE_DEBOUNCE = 3'd6;
    localparam STATE_ERROR = 3'd7;
    
    // reg [7:0] screenBuffer [0:1023];
    // initial $readmemh("nanou.hex", screenBuffer);
    
    // used to check if the api has finished
    reg processStarted=0;
    // used for debouncing 
    reg [24:0] txCounter = 0;
    reg initiated =0;

    always @(posedge clk) begin
    case (state)
            STATE_IDLE: begin
                en_api<=0;
                doubleData<=0;
                pixelCounter <= 0;
                if(initiated==1'b0)begin
                    initiated<=1;
                    // commandIndex = ((SETUP_INSTRUCTIONS) * 8); // Old Initialization
                    commandIndex = 16;
                    state <= STATE_INIT;
                end
            end
            STATE_INIT:begin
                case(commandIndex)
                    default: begin
                        state <= STATE_IDLE;
                        commandIndex <= 16;
                    end
                    16: begin//display off
                        doubleData = 0;
                        data <= 8'hAE;
                    end
                    15: begin//clock divide ratio
                        doubleData = 1;
                        data <= 8'hD5;
                        data2 <= 8'h80;
                    end
                    14: begin//mux ratio
                        doubleData = 1;
                        data <= 8'hA8;
                        data2 <= 8'h3F;
                    end
                    13: begin//display offset
                        doubleData = 1;
                        data <= 8'hD3;
                        data2 <= 8'h00;
                    end
                    12: begin//start line
                        doubleData = 0;
                        data <= 8'h40;
                    end
                    11: begin//charge pump
                        doubleData = 1;
                        data <= 8'h8D;
                        data2 <= 8'h14;
                    end
                    10: begin //memory mode
                        doubleData = 1;
                        data <= 8'h20;
                        data2 <= 8'h00;
                    end
                    9: begin// address 0 is segment 0
                        doubleData = 0;
                        data <= 8'hA1;
                    end
                    8: begin//segment remap
                        doubleData = 0;
                        data <= 8'hC8;
                    end
                    7: begin//COM output scan direction
                        doubleData = 1;
                        data <= 8'hDA;
                        data2 <= 8'h12;
                    end
                    6: begin//contrast control
                        doubleData = 1;
                        data <= 8'h81;
                        data2 <= 8'h7F;
                    end
                    5: begin//VCOM deselect level
                        doubleData = 1;
                        data <= 8'hDB;
                        data2 <= 8'h40;
                    end
                    4: begin//resume RAM content
                        doubleData = 0;
                        data <= 8'hA4;
                    end
                    3: begin//normal screen mode
                        doubleData = 0;
                        data <= 8'hA6;
                    end
                    2: begin//display on
                        doubleData = 0;
                        data <= 8'hAF;
                    end
                    1: begin //set contrast to max
                        doubleData <=1;
                        data <= 8'h81;
                        data2 <= 8'hFF;
                    end
                endcase
                cmd <= 8'h00;
                // data <= startupCommands[(commandIndex-1)-:8'd8]; // old initialization
                commandIndex <= commandIndex - 8'd1;
                // commandIndex <= commandIndex - 8'd8; // old initialization
                en_api <= 1;
                state <= STATE_WAIT_API;
                next_state <= STATE_CHECK_FINISHED_INIT;
            end
            STATE_WAIT_API:begin
                en_api <= 0;
                if(i2c_error)
                    state <= STATE_ERROR;
                else
                if (~processStarted && ~api_complete)
                begin
                    processStarted <= 1;
                end
                else if (api_complete && processStarted) begin
                    state <= next_state;
                    processStarted <= 0;   
                end
            end
            STATE_CHECK_FINISHED_INIT: begin
                if (commandIndex == 0)
                begin
                    state <= STATE_LOAD_IMAGE;
                    pixelCounter <= 0;
                end 
                else
                    state <= STATE_INIT; 
            end
            STATE_LOAD_IMAGE: begin
                en_api <= 1;
                doubleData <= 0;
                cmd <= 8'h40;
                // data <= screenBuffer[pixelCounter];
                pixelCounter <= pixelCounter + 1;
                data <= pixelData;
                state <= STATE_WAIT_API;
                next_state <= STATE_CHECK_IMG_FINISH;
            end
            STATE_CHECK_IMG_FINISH: begin
                if (pixelCounter == 10'd0)
                    state <= STATE_LOAD_IMAGE; 
                else
                    state <= STATE_LOAD_IMAGE; 
            end
            STATE_DEBOUNCE:
            begin
            if (txCounter == 23'b111111111111111111) begin
                txCounter <= 0;
                // if (btn1 == 1 && btn2 == 1) 
                    state <= STATE_IDLE;
            end else
            begin
                txCounter <= txCounter + 1;
            end
            end
            STATE_ERROR: begin
                state <= STATE_IDLE;
            end
        endcase
    end

endmodule
