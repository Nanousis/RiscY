`timescale 1ns / 1ps

module LEDdecoder(char, LED);

    
    input [3:0] char;
    output [6:0] LED;
    reg [6:0] regLED;
    assign LED = regLED;
    
    //MUX that picks which leds will light up
    // 0 = light up
    always @(char) begin
//             4'b0000: regLED = 7'b0000001;//0
//             4'b0001: regLED = 7'b1001111;//1
//             4'b0010: regLED = 7'b0010010;//2
//             4'b0011: regLED = 7'b0000110;//3
//             4'b0100: regLED = 7'b1001100;//4
//             4'b0101: regLED = 7'b0100100;//5
//             4'b0110: regLED = 7'b0100000;//6
//             4'b0111: regLED = 7'b0001111;//7
//             4'b1000: regLED = 7'b0000000;//8
//             4'b1001: regLED = 7'b0000100;//9
//             4'b1010: regLED = 7'b0001000;//a
//             4'b1011: regLED = 7'b1100000;//b
//             4'b1100: regLED = 7'b0110001;//c
//             4'b1101: regLED = 7'b1000010;//d
//             4'b1110: regLED = 7'b0110000;//e
//             4'b1111: regLED = 7'b0111000;//f
//             default: regLED = 7'b1111111;//default
        case (char)           // abcdefg
            4'b0000: regLED = 7'b1111110; //0
            4'b0001: regLED = 7'b0110000; //1
            4'b0010: regLED = 7'b1101101; //2
            4'b0011: regLED = 7'b1111001; //3
            4'b0100: regLED = 7'b0110011; //4
            4'b0101: regLED = 7'b1011011; //5
            4'b0110: regLED = 7'b1011111; //6
            4'b0111: regLED = 7'b1110000; //7
            4'b1000: regLED = 7'b1111111; //8
            4'b1001: regLED = 7'b1111011; //9
            4'b1010: regLED = 7'b1110111; //A
            4'b1011: regLED = 7'b0011111; //B
            4'b1100: regLED = 7'b1001110; //C
            4'b1101: regLED = 7'b0111101; //D
            4'b1110: regLED = 7'b1001111; //E
            4'b1111: regLED = 7'b1000111; //F
            default: regLED = 7'b0000000;



        endcase
    end

endmodule

module SSD (input clk,
            input [15:0] data,
            output reg D1, 
            output reg D2, 
            output reg D3, 
            output reg D4,
            output reg Dp=0, 
            output A, 
            output B, 
            output C, 
            output D, 
            output E, 
            output F, 
            output G
);

    reg [3:0] number;
    reg [7:0] counter;
    reg [1:0] display=0;
    LEDdecoder LEDdecoder_inst (number, {A, B, C, D, E, F, G});
	// Register the two inputs, and use A and B in the combinational logic. 
    always @ (posedge clk)
        begin
            counter<=counter+1;
            case (display)
                2'b00: begin D1=1; D2=1; D3=1; D4=0; Dp=0;end
                2'b01: begin D1=1; D2=1; D3=0; D4=1; Dp=0;end
                2'b10: begin D1=1; D2=0; D3=1; D4=1; Dp=0;end
                2'b11: begin D1=0; D2=1; D3=1; D4=1; Dp=0;end
            endcase
            casez(counter)
            8'b00?????? : begin 
                display=2'b00;
                number=data[3:0]; 
            end
            8'b01?????? : begin 
                display=2'b01;
                number=data[7:4]; 
            end
            8'b10?????? : begin 
                display=2'b10;
                number=data[11:8]; 
            end
            8'b11?????? : begin 
                display=2'b11;
                number=data[15:12]; 
            end
            endcase

        end
endmodule