`timescale 1ns / 1ps

module T_FF(input T, input clk, input rst, output reg Q=0);
    always @(posedge clk)
        if (rst)
            Q <= 0;
        else if (T)
            Q <= ~Q;
        else
            Q <= Q;
endmodule

module lockout_counter(
    input clk,
    output q1, q2, q3
);

wire T1, T2, T3;
wire L;

assign T1 = ~q2;
assign T2 = 1'b1;
assign T3 = q2;

assign L = (q3 & ~q2 & ~q1) |
           (~q3 & q2 & ~q1) |
           (~q3 & ~q2 & q1) |
           (q3 & q2 & q1);

T_FF FF1(T1, clk, L, q1);
T_FF FF2(T2, clk, L, q2);
T_FF FF3(T3, clk, L, q3);

endmodule
