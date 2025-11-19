`timescale 1ns / 1ps
module tb_Universal_Adder_Subtractor;
reg a1, a2, b1, b2, C0;
wire S1, S2, C1, C2, V;
Universal_Adder_Subtractor uut(
    .a1(a1), .a2(a2),
    .b1(b1), .b2(b2),
    .C0(C0),
    .S1(S1), .S2(S2),
    .C1(C1), .C2(C2),
    .V(V)
);
initial begin
    a1=0; a2=0; b1=0; b2=0; C0=0; #10
    a1=1; a2=0; b1=1; b2=0; C0=0; #10
    a1=0; a2=1; b1=1; b2=1; C0=0; #10
    a1=1; a2=1; b1=0; b2=1; C0=0; #10
    a1=0; a2=0; b1=0; b2=0; C0=1; #10
    a1=1; a2=0; b1=1; b2=0; C0=1; #10
    a1=0; a2=1; b1=1; b2=1; C0=1; #10
    a1=1; a2=1; b1=0; b2=1; C0=1; #10
    $finish;
end
endmodule
