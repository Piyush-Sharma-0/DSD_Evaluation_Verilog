`timescale 1ns / 1ps
module tb_Full_Adder(
    );
reg a,b,c_in;
wire S,C;
Full_Adder uut(
.a(a),.b(b),.c_in(c_in),
.S(S),.C(C)
);
initial begin
a=0; b=0; c_in=0; #10
a=0; b=0; c_in=1; #10
a=0; b=1; c_in=0; #10
a=0; b=1; c_in=1; #10
a=1; b=0; c_in=0; #10
a=1; b=0; c_in=1; #10
a=1; b=1; c_in=0; #10
a=1; b=1; c_in=1; #10
$finish;
end
endmodule
