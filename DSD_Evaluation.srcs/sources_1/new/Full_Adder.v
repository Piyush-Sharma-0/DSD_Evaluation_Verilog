`timescale 1ns / 1ps

module Full_Adder(
input a,b,c_in,
output S,C
    );
assign S=a^b^c_in;
assign C=(a&b)|(a&c_in)|(c_in&b);
// |- or, ~- not, ^- xor, ~^- xnor,~|- nor, ~&- Nand
endmodule
