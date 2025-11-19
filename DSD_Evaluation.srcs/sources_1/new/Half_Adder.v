`timescale 1ns / 1ps
module Half_Adder(
input a,b,
output S,C
    );
assign S=a^b;
assign C=a&b;
endmodule
