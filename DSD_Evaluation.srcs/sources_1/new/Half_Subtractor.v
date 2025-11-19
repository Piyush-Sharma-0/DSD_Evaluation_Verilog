`timescale 1ns / 1ps
module Half_Subtractor(
    input a, b,
    output D, B_out
);
assign D      = a ^ b; 
assign B_out = (~a) & b;

endmodule
