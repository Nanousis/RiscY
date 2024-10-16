module cpuTimer(
    input clk,
    input reset,
    output reg [31:0] counter
);
parameter DIVISION = 27;
reg [10:0] subCounter=0;
always @(posedge clk or negedge reset)
begin
    if(reset == 0)
    begin
        counter <= 0;
        subCounter <= 0;
    end
    else
    begin
        subCounter <= subCounter + 1;
        if(subCounter == DIVISION-1)
        begin
            subCounter <= 0;
            counter <= counter + 1;
        end
    end


end

endmodule