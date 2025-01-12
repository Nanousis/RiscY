module usbController(
    input clk,
    input usb_clk,

    input reset,
    input ren,
    input wen,
    inout  usb_dm, usb_dp,          // USB D- and D+

    input [1:0]     address,
    output reg [31:0] data_out=32'hdeadbeaf
);

reg new_data_in=0;

localparam KEYMODIFIER = 2;
localparam TYPE = 1;
localparam DATAOUT = 0;
reg [4:0] stateDebug=0;

wire [1:0] usb_type;
wire usb_report;
wire usb_error;

wire [7:0] key_modifiers;
wire [7:0] key1;
wire [7:0] key2;
wire [7:0] key3;
wire [7:0] key4;

wire [7:0] mouse_btn;
wire [7:0] mouse_dx;
wire [7:0] mouse_dy;

reg [31:0] temp_data_out;
wire [63:0] dbg;

reg [22:0] cnt=0;
reg [13:0] adr=0;
always@(posedge usb_clk) begin
    cnt <= cnt+1;
    if(cnt==0) begin
        adr <= adr+1;
    end
end
reg [3:0] tmp;
    usb_hid_host_rom rom(.clk(usb_clk), .adr(adr), .data(tmp));


always @(posedge clk or negedge reset) begin
    if(reset==0) begin
        data_out <= 0;
        new_data_in <= 0;
        temp_data_out <= 0;
        //debug to see where the adress is sent
        stateDebug <= 0;
    end
    else begin
        if(wen||ren)
        begin
            case(address)
            // this is not correct when you get from ren=1 to reading TYPE
            // this returns 0 instead of 1
            KEYMODIFIER: begin
                stateDebug <= 2;
                if(ren)
                    data_out <= {8'h0,key_modifiers,16'h0};
            end
            TYPE: begin
                stateDebug <= 1;
                if(ren)
                    data_out <= {16'h0,6'h0,usb_type,8'h0};
            end
            DATAOUT: begin
                stateDebug <= 5;
                if(ren)begin
                    data_out <=(usb_error)?32'hdeadbeef:temp_data_out;
                end
                if(wen)
                begin
                    data_out <= 32'hdeadbeaf;
                end
            end
            default: begin
                stateDebug <= 11;
                // data_out <= 0;
                    data_out <=temp_data_out;
            end
        endcase
    end
    else
    begin
        if(usb_report==1)
        begin
            if(usb_type==1)
                temp_data_out = {key1,key2,key3,key4};
            else if(usb_type==2)
                temp_data_out = {8'h0,mouse_btn,mouse_dx,mouse_dy};
            else
                temp_data_out = 32'hdeadbeaf;
        end
    end
    end



end

usb_hid_host usb_host (
    .usbclk(usb_clk),		        // 12MHz clock
    .usbrst_n(reset),	            // reset
    .usb_dm(usb_dm), 
    .usb_dp(usb_dp),         // USB D- and D+

    .typ(usb_type),                    // device type. 0: no device, 1: keyboard, 2: mouse, 3: gamepad
    .report(usb_report),                 // pulse after report received from device. 
                            // key_*, mouse_*, game_* valid depending on typ
    .conerr(usb_error),                 // connection or protocol error

    // keyboard    .key4(key4)
    .key_modifiers(key_modifiers),
    .key1(key1), 
    .key2(key2), 
    .key3(key3), 
    .key4(key4),



    // mouse
    .mouse_btn(mouse_btn),     // {5'bx, middle, right, left}
    .mouse_dx(mouse_dx),      // signed 8-bit, cleared after `report` pulse
    .mouse_dy(mouse_dy),      // signed 8-bit, cleared after `report` pulse

//  // gamepad 
//  game
    //  game
    //  game
    //  game_d,  // left right up down
//  game
    //  game
    //  game
    //  game
    //  game_s
    //  game_sta,  // buttons

//  // debug
 .dbg_hid_report(dbg)	// last HID report
);

endmodule