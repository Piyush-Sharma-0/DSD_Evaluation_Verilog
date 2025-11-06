`timescale 1ns / 1ps //basic time unit of simulation- 1ns, precision- 1ps

module Not_Gate(
input a,
output y
    );
assign y=~a;
// |- or, ~- not, ^- xor, ~^- xnor,~|- nor, ~&- Nand
endmodule
