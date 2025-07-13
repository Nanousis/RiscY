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

/* "is_last" == 0 means byte number is 4, no matter what value "byte_num" is. */
/* if "in_ready" == 0, then "is_last" should be 0. */
/* the user switch to next "in" only if "ack" == 1. */

module padder (clk, reset, in, in_ready, is_last, byte_num, buffer_full, out, out_ready, f_ack, out_size);
    input              clk, reset;
    input      [31:0]  in;
    input              in_ready, is_last;
    input      [1:0]   byte_num;
    output             buffer_full; /* to "user" module */
    output reg [1151:0] out;         /* to "f_permutation" module */
    output             out_ready;   /* to "f_permutation" module */
    input              f_ack;       /* from "f_permutation" module */
    input     [1:0]    out_size; /* 00 -> 512, 01 -> 384, 10 -> 256, 11 -> 224 */
    // Bitrate is: 00: 576, 01: 832, 10: 1088, 11: 1152
    
    reg                state;       /* state == 0: user will send more input data
                                     * state == 1: user will not send any data */
    reg                done;        /* == 1: out_ready should be 0 */
    // reg        [R_BITRATE/32-1:0]  i;           /* length of "out" buffer */
    reg [35:0] i; 
    wire       [31:0]  v0;          /* output of module "padder1" */
    reg        [31:0]  v1;          /* to be shifted into register "out" */
    wire               accept,      /* accept user input? */
                       update;

    wire [31:0] last_state_idx; 
    assign last_state_idx = out_size == 2'h0 ? 17 :
                            out_size == 2'h1 ? 25 :
                            out_size == 2'h2 ? 33 :
                                               35 ; 
    // last_state_idx = BITRATE/32-1
    assign buffer_full = i[last_state_idx];

    assign out_ready = buffer_full;
    assign accept = (~ state) & in_ready & (~ buffer_full); // if state == 1, do not eat input
    assign update = (accept | (state & (~ buffer_full))) & (~ done); // don't fill buffer if done

    parameter BITRATE_512 = 576;
    parameter BITRATE_384 = 832;
    parameter BITRATE_256 = 1088;
    parameter BITRATE_224 = 1152;

    always @ (posedge clk) begin
      if (reset)
        out <= 0;
      else if (update) begin
        if (out_size == 0) 
          out <= {576'h0, out[BITRATE_512-1-32:0], v1};
        else if (out_size == 1)
          out <= {320'h0, out[BITRATE_384-1-32:0], v1};
        else if (out_size == 2)
          out <= {64'h0,  out[BITRATE_256-1-32:0], v1};
        else 
          out <= {out[BITRATE_224-1-32:0], v1};
      end
    end

    always @ (posedge clk) begin
      if (reset)
        i <= 0;
      else if (f_ack | update) begin
        // i <= {i[bitrate/32-2], 1'b1} & ((bitrate/32){~ f_ack})

        if (out_size == 0) 
          i <= {i[16:0], 1'b1} & {(36){~ f_ack}};
        else if (out_size == 1)
          i <= {i[24:0], 1'b1} & {(36){~ f_ack}};
        else if (out_size == 2)
          i <= {i[32:0], 1'b1} & {(36){~ f_ack}};
        else 
          i <= {i[34:0], 1'b1} & {(36){~ f_ack}};
      end
    end


/*    if (f_ack)  i <= 0; */
/*    if (update) i <= {i[16:0], 1'b1}; // increase length */

    always @ (posedge clk)
      if (reset)
        state <= 0;
      else if (is_last)
        state <= 1;

    always @ (posedge clk)
      if (reset)
        done <= 0;
      else if (state & out_ready)
        done <= 1;

    padder1 p0 (in, byte_num, v0);
    
    always @ (*)
      begin
        if (state)
          begin
            v1 = 0;
            v1[7] = v1[7] | i[last_state_idx - 1]; // "v1[7]" is the MSB of the last byte of "v1"
          end
        else if (is_last == 0)
          v1 = in;
        else
          begin
            v1 = v0;
            v1[7] = v1[7] | i[last_state_idx - 1];
          end
      end
endmodule
