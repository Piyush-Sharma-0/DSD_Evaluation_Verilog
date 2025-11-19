`timescale 1ns / 1ps

module Full_Subtractor(
input a,b,c,
output D,B_out
    );
assign D=a^b^c;
assign B_out=(~a&b)|(~(a^b)&c);
endmodule
