`timescale 1ns / 1ps

module Boolean_XS3(
    input a, b, c, d,
    output w, x, y, z
);

assign w =  a | (b & c) | (b & d);
assign x = (~b & c) | (~b & d) | (b & ~c & ~d);
assign y = (~d & ~c) | (c & d);
assign z = ~d;

endmodule
