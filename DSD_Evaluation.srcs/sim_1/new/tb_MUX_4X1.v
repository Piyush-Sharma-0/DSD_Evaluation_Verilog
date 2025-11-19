`timescale 1ns / 1ps
module tb_MUX_4X1();
reg a, b, c, d;
reg s1, s2;
wire y;
MUX_4X1 uut(
    .a(a), .b(b), .c(c), .d(d),
    .s1(s1), .s2(s2),
    .y(y)
);
initial begin
    a = 1; b = 0; c = 1; d = 1;
    s1 = 0; s2 = 0; #10;   // y = a
    s1 = 0; s2 = 1; #10;   // y = b
    s1 = 1; s2 = 0; #10;   // y = c
    s1 = 1; s2 = 1; #10;   // y = d
    $finish;
end
endmodule
