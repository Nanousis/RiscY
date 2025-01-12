module flashController(
    input clk,
    input reset,
    input ren,
    input wen,
    
    input flashMiso,
    output flashClk,
    output flashMosi,
    output flashCs,

    input [31:0] data_in,
    input [7:0] address,
    output reg [31:0] data_out=32'hdeadbeaf
);

reg flash_enable=0, flash_wen=0, flash_ren=0;
wire flash_ready;
reg [23:0] flash_address=0;
reg [31:0] flash_data_in=0;
wire [31:0] flash_data_out;

localparam READY = 0;
localparam READENABLE = 1;
localparam WRITEENABLE = 2;
localparam ADDRESS = 4;
localparam DATAIN = 8;
localparam DATAOUT = 12;
reg [4:0] stateDebug=0;


always @(posedge clk or negedge reset) begin
    if(reset==0) begin
        flash_enable <= 1;
        flash_wen <= 0;
        flash_ren <= 0;
        flash_address <= 0;
        flash_data_in <= 0;
        data_out <= 0;
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
                stateDebug <= 9;

                if(ren)
                    data_out <= (flash_ready) ? 32'hffffffff : 0;
            end
            READENABLE: begin
                stateDebug <= 1;

                if(wen)begin
                    flash_enable <= 1;
                    flash_ren <= (data_in != 0) ? 1 : 0;
                end
                else if(ren)begin
                    data_out <= (flash_ren)? 32'hffffffff : 0;
                end
            end
            WRITEENABLE: begin
                stateDebug <= 2;

                if(wen)begin
                    flash_enable <= 1;
                    flash_wen <= (data_in != 0) ? 1 : 0;
                end
                else if(ren)begin
                    data_out <= (flash_wen)? 32'hffffffff : 0;
                end
            end
            ADDRESS: begin
                stateDebug <= 3;

                if(wen)begin
                    flash_enable <= 1;
                    flash_address <= data_in[23:0];
                end
                else if(ren)begin
                    data_out <= flash_address;
                end
            end
            DATAIN: begin
                stateDebug <= 4;
                if(wen)begin
                    flash_data_in <= data_in;
                end
                else if(ren)begin
                    data_out <= flash_data_in;
                end
            end
            DATAOUT: begin
                stateDebug <= 5;
                if(ren)begin
                        data_out <= flash_data_out;
                end
                if(wen)
                begin
                    data_out <= 32'hdeadbeaf;
                end
            end
            default: begin
                stateDebug <= 11;
                // data_out <= 0;
                data_out <= {address, 24'h0};  
            end
            endcase
        end
        else
        if(flash_ready==0)
        begin
            flash_enable <= 0;
        end
    end

end

flashNavigator navigator
(
    .clk(clk),
    .flash_enable(flash_enable),
    .readAddress(flash_address),
    .writeAddress(flash_address),
    .dataToWrite(flash_data_in),
    .write_enable(flash_wen),
    .read_enable(flash_ren),
    .flashMiso(flashMiso),
    .flashClk(flashClk), 
    .flashMosi(flashMosi),
    .flashCs(flashCs),
    .ready(flash_ready),
    .data_out(flash_data_out)
);


endmodule