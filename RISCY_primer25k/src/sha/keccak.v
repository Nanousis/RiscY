/*
 * Copyright 2013, Homer Hsing <homer.hsing@gmail.com>
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

/* "is_last" == 0 means byte number is 8, no matter what value "byte_num" is. */
/* if "in_ready" == 0, then "is_last" should be 0. */
/* the user switch to next "in" only if "ack" == 1. */

`define low_pos(w,b)      ((w)*64 + (b)*8)
`define low_pos2(w,b)     `low_pos(w,7-b)
`define high_pos(w,b)     (`low_pos(w,b) + 7)
`define high_pos2(w,b)    (`low_pos2(w,b) + 7)

module keccak (clk, reset, in, in_ready, is_last, byte_num, buffer_full, out, out_ready, out_size);
    input              clk, reset;
    input      [31:0]  in;
    input              in_ready, is_last;
    input      [1:0]   byte_num;
    output             buffer_full; /* to "user" module */
    output     [511:0] out;
    output reg         out_ready;
    input      [1:0]   out_size;

    reg                state;     /* state == 0: user will send more input data
                                   * state == 1: user will not send any data */
    wire       [1151:0] padder_out,
                       padder_out_1; /* before reorder byte */
    wire               padder_out_ready;
    wire               f_ack;
    wire      [1599:0] f_out;
    wire               f_out_ready;
    wire       [511:0] out1;      /* before reorder byte */
    wire       [511:0] out_full; // Before truncating
    reg        [22:0]  i;         /* gen "out_ready" */

    genvar w, b;

    assign out1 = f_out[1599:1599-511];

    assign out[511:0] = out_full[511:0];

    always @ (posedge clk)
      if (reset)
        i <= 0;
      else
        i <= {i[21:0], state & f_ack};

    always @ (posedge clk)
      if (reset)
        state <= 0;
      else if (is_last)
        state <= 1;

    /* reorder byte ~ ~ */
    generate
      for(w=0; w<8; w=w+1)
        begin : L0
          for(b=0; b<8; b=b+1)
            begin : L1
              assign out_full[`high_pos(w,b):`low_pos(w,b)] = out1[`high_pos2(w,b):`low_pos2(w,b)];
            end
        end
    endgenerate


    parameter BITRATE_512 = 576;
    parameter BITRATE_384 = 832;
    parameter BITRATE_256 = 1088;
    parameter BITRATE_224 = 1152;

    wire [BITRATE_512-1:0] padder_out_512;
    wire [BITRATE_384-1:0] padder_out_384;
    wire [BITRATE_256-1:0] padder_out_256;
    wire [BITRATE_224-1:0] padder_out_224;

    /* reorder byte ~ ~ */
    generate
      for(w=0; w<(BITRATE_512/64); w=w+1)
        begin : L2_512
          for(b=0; b<8; b=b+1)
            begin : L3_512
              assign padder_out_512[`high_pos(w,b):`low_pos(w,b)] = padder_out_1[`high_pos2(w,b):`low_pos2(w,b)];
            end
        end
    endgenerate

    generate
      for(w=0; w<(BITRATE_384/64); w=w+1)
        begin : L2_384
          for(b=0; b<8; b=b+1)
            begin : L3_384
              assign padder_out_384[`high_pos(w,b):`low_pos(w,b)] = padder_out_1[`high_pos2(w,b):`low_pos2(w,b)];
            end
        end
    endgenerate

    generate
      for(w=0; w<(BITRATE_256/64); w=w+1)
        begin : L2_256
          for(b=0; b<8; b=b+1)
            begin : L3_256
              assign padder_out_256[`high_pos(w,b):`low_pos(w,b)] = padder_out_1[`high_pos2(w,b):`low_pos2(w,b)];
            end
        end
    endgenerate

    generate
      for(w=0; w<(BITRATE_224/64); w=w+1)
        begin : L2_224
          for(b=0; b<8; b=b+1)
            begin : L3_224
              assign padder_out_224[`high_pos(w,b):`low_pos(w,b)] = padder_out_1[`high_pos2(w,b):`low_pos2(w,b)];
            end
        end
    endgenerate

    assign padder_out = out_size == 0 ? {576'h0, padder_out_512} :
                        out_size == 1 ? {320'h0, padder_out_384} :
                        out_size == 2 ? {64'h0,  padder_out_256} :
                                                 padder_out_224  ;

    always @ (posedge clk)
      if (reset)
        out_ready <= 0;
      else if (i[22])
        out_ready <= 1;

    padder 
      padder_ (clk, reset, in, in_ready, is_last, byte_num, buffer_full, padder_out_1, padder_out_ready, f_ack, out_size);

    f_permutation
      f_permutation_ (clk, reset, padder_out, padder_out_ready, f_ack, f_out, f_out_ready, out_size);
endmodule

`undef low_pos
`undef low_pos2
`undef high_pos
`undef high_pos2
