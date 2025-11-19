`timescale 1ns / 1ps

module tb_JK_FlipFlop(

    );
    reg J,K,clk;
    wire q, q_bar;
    
JK_FlipFlop uut (
     .clk(clk),
    .J(J),
    .K(K),
    .q(q),
    .q_bar(q_bar)
);

    initial begin
    clk=0;
    forever #5 
    clk = ~clk;
    end
    
    initial begin 
    J = 0; K = 1; #10;
    J = 0; K = 0; #10;
    J = 1; K = 0; #10;
    J = 1; K = 1; #10;
    $finish;
end 
endmodule
