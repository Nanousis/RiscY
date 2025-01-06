`timescale 1ns / 1ps
/*
Permission is hereby granted, free of charge, to any person obtaining a copy of 
this software and associated documentation files (the "Software"), to deal in the 
Software without restriction, including without limitation the rights to use, copy,
 modify, merge, publish, distribute, sublicense, and/or sell copies of the 
 Software, and to permit persons to whom the Software is furnished to do so,
  subject to the following conditions:

The above copyright notice and this permission notice shall be included in all 
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
 INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, 
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE 
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, 
 WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN 
 CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE. 
*/


module key_expansion #(parameter n=16, m=4)(
    input [n*m-1:0] key,
    input [6:0] i, //denotes current round 
    output reg [n-1:0] key_i
);
    localparam [0:61] z_0 = 62'b11111010001001010110000111001101111101000100101011000011100110;
    localparam [0:61] z_1 = 62'b10001110111110010011000010110101000111011111001001100001011010;
    localparam [0:61] z_2 = 62'b10101111011100000011010010011000101000010001111110010110110011;
    localparam [0:61] z_3 = 62'b11011011101011000110010111100000010010001010011100110100001111;
    localparam [0:61] z_4 = 62'b11010001111001101011011000100000010111000011001010010011101111;
    reg [n-1:0] tmp,tmp2, tmp3, ror3, ror1;
    wire [0:61] z;
    reg [7:0] index;
    generate
        assign z = (j(n,m)==0)? z_0:(j(n,m)==1)?z_1:(j(n,m)==2)?z_2:(j(n,m)==3)?z_3:z_4;
    endgenerate
   // assign z = (j(n,m)==0)? z_0:(j(n,m)==1)?z_1:(j(n,m)==2)?z_2:(j(n,m)==3)?z_3:z_4;   
    
    always@(key, i)
    begin
        if(i<m)
            key_i = key[(n*(i+1))-1-:n];
        else
        begin
            tmp =  {key[(n*(m-1))+:3],key[n*m-1-:(n-3)]}; //(key[(n*m-1)-:n] >> 3); Ror 3
            ror3= tmp;
            if (m==4)begin
                tmp2 = tmp ^ key[(2*n)-1-:n];
                tmp = tmp2;
            end
            ror1 = tmp ^ {tmp[0],tmp[n-1:1]}; //(tmp >> 1) ror 1
            tmp=ror1;
            //tmp = tmp ^ {tmp[0],tmp[n-1:1]}; //(tmp >> 1) ror 1
            index = (i-m)<62? i-m: (i-m)-62;
            key_i = ~key[n-1:0] ^ tmp ^ z[index] ^ 2'b11;
        end    
    end

function integer j;
    input integer n;
    input integer m;
    case(n)
        16: j = 0;
        24: j = (m==3)?0:(m==4)?1:-1;
        32: j = (m==3)?2:(m==4)?3:-1;
        48: j = (m==2)?2:(m==3)?3:-1;
        64: j = (m==2)?2:(m==3)?3:(m==4)?4:-1;
        default: j =-1;
     endcase    
endfunction   
endmodule
