`timescale 1ns / 1ps
module tb_lockout_counter;

reg clk;
wire q1, q2, q3;

lockout_counter uut(
    .clk(clk),
    .q1(q1),
    .q2(q2),
    .q3(q3)
);

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    #80;
    $finish;
end

endmodule
