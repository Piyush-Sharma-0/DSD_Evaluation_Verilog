`timescale 1ns / 1ps
module Universal_Adder_Subtractor(
    input a1, a2,
    input b1, b2,
    input C0,
    output S1, S2,
    output C1, C2,
    output V
);
wire b1p, b2p;
assign b1p = b1 ^ C0;
assign b2p = b2 ^ C0;
assign S1 = a1 ^ b1p ^ C0;
assign C1 = (a1 & b1p) | (a1 & C0) | (b1p & C0);
assign S2 = a2 ^ b2p ^ C1;
assign C2 = (a2 & b2p) | (a2 & C1) | (b2p & C1);
assign V = C1 ^ C2;
endmodule
