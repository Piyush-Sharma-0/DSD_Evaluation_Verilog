`timescale 1ns / 1ps

module MUX(
    input a, b, c, d,   // Data inputs
    input s1, s2,       // Select inputs
    output reg y        // Output must be reg inside always
);

always @(*) begin
    if      (s1 == 0 && s2 == 0) y = a;
    else if (s1 == 0 && s2 == 1) y = b;
    else if (s1 == 1 && s2 == 0) y = c;
    else                         y = d;
end

endmodule
