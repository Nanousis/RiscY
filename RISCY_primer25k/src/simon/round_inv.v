
module round_inv #(parameter n=16, m=4)
    (y, k, x_s);
    input [(2*n)-1:0] y;  // Concatenated output from encryption
    input [(n-1):0] k;    // Round key
    output [(2*n)-1:0] x_s;  // Concatenated input to encryption

    
    wire [n-1:0] x_0, x_1, rol_1, rol_8, rol_2, f_x1;
    
    assign x_1 = y[n-1:0]; // Recover x_1 from y_0
    assign rol_1 = {x_1[0+:(n-1)], x_1[n-1]};
    assign rol_2 = {x_1[0+:(n-2)], x_1[n-1-:2]};
    assign rol_8 = {x_1[0+:(n-8)], x_1[n-1-:8]};
    
    // Compute f(x_1, k)
    assign f_x1 = ((rol_1 & rol_8) ^ rol_2) ^ k;

    // Recover x_0 from y_1
    assign x_0 = y[(2*n)-1-:n] ^ f_x1;
    
    // Concatenate to form the original input x_s
    assign x_s = {x_1, x_0};
endmodule
