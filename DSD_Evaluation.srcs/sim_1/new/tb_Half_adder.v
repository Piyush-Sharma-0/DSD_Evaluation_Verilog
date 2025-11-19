`timescale 1ns / 1ps
module tb_Half_adder(
    );
reg a,b;
wire S,C;
Half_Adder uut(
.a(a),.b(b),
.S(S),.C(C)
);
initial begin
a=0; b=0; #10
a=0; b=1; #10
a=1; b=0; #10
a=1; b=1; #10
$finish;
end
endmodule
