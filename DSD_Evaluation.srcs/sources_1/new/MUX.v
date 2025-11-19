`timescale 1ns / 1ps
module MUX(
    input a, b, c, d, e, f, g, h,   // Data inputs
    input s1, s2, s3,      // Select inputs
    output reg y        // Output must be reg inside always
);
always @(*) begin
    if (s1 == 0 && s2 == 0 && s3 == 0) y = a;
    else if (s1 == 0 && s2 == 0 && s3 == 1) y = b;
    else if (s1 == 0 && s2 == 1 && s3 == 0) y = c;
    else if (s1 == 0 && s2 == 1 && s3 == 1) y = d;
    else if (s1 == 1 && s2 == 0 && s3 == 0) y = e;
    else if (s1 == 1 && s2 == 0 && s3 == 1) y = f;
    else if (s1 == 1 && s2 == 1 && s3 == 0) y = g;
    else y = h;
end
endmodule
