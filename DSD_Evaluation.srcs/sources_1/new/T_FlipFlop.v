`timescale 1ns / 1ps
module T_FlipFlop(
    input  T,
    input  clk,
    output reg Q = 0
);
    always @(posedge clk) begin
        if (T == 1)
            Q <= ~Q;
        else
            Q <= Q;
    end

endmodule
