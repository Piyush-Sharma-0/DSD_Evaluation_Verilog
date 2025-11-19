`timescale 1ns / 1ps
module tb_Half_subtractor;
reg a, b;
wire D, B_out;
Half_Subtractor uut (
.a(a),.b(b),
.D(D),.B_out(B_out)
);
initial begin
a = 0; b = 0; #10
a = 0; b = 1; #10
a = 1; b = 0; #10
a = 1; b = 1; #10
$finish;
end
endmodule
