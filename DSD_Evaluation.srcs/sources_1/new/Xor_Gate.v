`timescale 1ns / 1ps //basic time unit of simulation- 1ns, precision- 1ps

module Xor_Gate(
input a,b,
output y
    );
assign y=a^b;
// |- or, ~- not, ^- xor, ~^- xnor,~|- nor, ~&- Nand
endmodule
