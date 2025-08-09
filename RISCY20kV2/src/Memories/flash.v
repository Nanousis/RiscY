
module flashNavigator
(
    input clk,
    input flash_enable,
    input [23:0] readAddress,
    input [23:0] writeAddress,
    input [23:0] dataToWrite,
    input write_enable,
    input read_enable,
    input flashMiso,
    output reg flashClk = 0,
    output reg flashMosi = 0,
    output reg flashCs = 1,

    output wire flash_ready,
    output reg [31:0] data_out=32'h0
);

  assign flash_ready = ready | dataReady;
  reg ready = 1'b1;
  reg [7:0] command = 8'h03;
  reg [7:0] currentByteOut = 0;
  reg [7:0] currentByteNum = 0;
  reg [255:0] dataIn = 0;
  reg [255:0] dataInBuffer = 0;
  reg enabling_done = 0;

  localparam STATE_INIT_POWER = 8'd0;
  localparam STATE_LOAD_CMD_TO_SEND = 8'd1;
  localparam STATE_SEND = 8'd2;
  localparam STATE_LOAD_ADDRESS_TO_SEND = 8'd3;
  localparam STATE_READ_DATA = 8'd4;
  localparam STATE_DONE = 8'd5;

  //Write States
  localparam STATE_WRITE_ENABLE = 8'd6;
  localparam STATE_LOAD_WRITE_CMD = 8'd7;
  localparam STATE_LOAD_WRITE_ADDRESS = 8'd8;
  localparam STATE_SEND_WRITE_DATA = 8'd9;
  localparam STATE_WAIT_WRITE_COMPLETE = 8'd10;

  reg [23:0] dataToSend = 0;
  reg [8:0] bitsToSend = 0;

  reg [32:0] counter = 0;
  reg [3:0] state = 0;
  reg [3:0] returnState = 0;

  reg dataReady = 0;
  reg [7:0] stored_characters[3:0];

  reg write_progress = 0;

  always @(posedge clk) begin
    case (state)
      STATE_INIT_POWER: begin
        counter <= 32'd0;

        if (flash_enable == 1'b1) begin
          if(write_enable) begin
            ready <= 0;
            state <= STATE_WRITE_ENABLE;
          end
          else if (read_enable) begin
            ready <= 0;
            state <= STATE_LOAD_CMD_TO_SEND;
          end
          else begin
            ready <= 1;
            state <= STATE_INIT_POWER;
          end
          dataReady <= 0;
          currentByteNum <= 0;
          currentByteOut <= 0;
          enabling_done <= 0;
        end
        else begin
          state <= STATE_INIT_POWER;
          ready <= 1;
        end
      end
      STATE_LOAD_CMD_TO_SEND: begin
          flashCs <= 0;
          dataToSend[23-:8] <= command;
          bitsToSend <= 8;
          state <= STATE_SEND;
          returnState <= STATE_LOAD_ADDRESS_TO_SEND;
      end
      STATE_SEND: begin
        if (counter == 32'd0) begin
          flashClk <= 0;
          flashMosi <= dataToSend[23];
          dataToSend <= {dataToSend[22:0],1'b0};
          bitsToSend <= bitsToSend - 1;
          counter <= 1;
        end
        else begin
          counter <= 32'd0;
          flashClk <= 1;
          if (bitsToSend == 0)
            state <= returnState;
        end
      end
      STATE_LOAD_ADDRESS_TO_SEND: begin
        dataToSend <= readAddress; 
        bitsToSend <= 24;
        state <= STATE_SEND;
        returnState <= STATE_READ_DATA;
        currentByteNum <= 0;
      end
      STATE_READ_DATA: begin
        if (counter[0] == 1'd0) begin
          flashClk <= 0;
          counter <= counter + 1;
          if (counter[3:0] == 0 && counter > 0) begin
            dataIn[(currentByteNum << 3)+:8] <= currentByteOut;
            currentByteNum <= currentByteNum + 1;
            data_out[(8*currentByteNum)+:8] <= currentByteOut;
            //stored_characters[3-currentByteNum] <= currentByteOut;
            if (currentByteNum == 3)
            begin
              state <= STATE_DONE;
              dataReady <= 1;
            end
          end
        end
        else begin
          flashClk <= 1;
          currentByteOut <= {currentByteOut[6:0], flashMiso};
          counter <= counter + 1;
        end
      end
      STATE_WRITE_ENABLE: begin
          flashCs <= 0;
          dataToSend[23-:8] <= 8'h06; //write enable command for puya
          bitsToSend <= 8;
          enabling_done <= 1;
          state <= STATE_SEND;
          returnState <= STATE_DONE;
      end
      STATE_LOAD_WRITE_CMD: begin
          flashCs <= 0;
          dataReady <= 0;
          write_progress <= 0;
          dataToSend[23-:8] <= 8'h02; //write command (PP)
          bitsToSend <= 8;
          state <= STATE_SEND;
          returnState <= STATE_LOAD_WRITE_ADDRESS;
      end
      STATE_LOAD_WRITE_ADDRESS: begin
          dataToSend <= writeAddress; 
          bitsToSend <= 24;
          state <= STATE_SEND;
          returnState <= STATE_SEND_WRITE_DATA;
      end
      STATE_SEND_WRITE_DATA: begin
          dataToSend <= dataToWrite; 
          bitsToSend <= 8;
          state <= STATE_SEND;
          returnState <= STATE_DONE;
      end
      STATE_DONE: begin
        dataReady <= 0;
        flashCs <= 1;
        dataInBuffer <= dataIn;
        if(enabling_done && write_enable) begin
            state <= STATE_LOAD_WRITE_CMD;
        end
        else
        begin
          state <= STATE_INIT_POWER;
        end
      end
    endcase
  end

endmodule
