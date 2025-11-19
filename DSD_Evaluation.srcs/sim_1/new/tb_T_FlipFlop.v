`timescale 1ns / 1ps

module tb_T_FlipFLop(

    );
    reg T,clk;
    wire Q;
T_FlipFlop uut(
.clk(clk),
.T(T),
.Q(Q)
);
initial begin
    clk=0;
    forever #5 
    clk = ~clk;
end
initial begin 
    T=0; #4;
    T=1; #7;
    T=0; #8;
    T=1; #10;
    $finish;
end    
endmodule
