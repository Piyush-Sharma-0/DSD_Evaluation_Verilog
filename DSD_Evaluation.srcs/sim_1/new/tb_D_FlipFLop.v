`timescale 1ns / 1ps

module tb_D_FlipFLop(

    );
    reg D,clk;
    wire Q;
D_FlipFlop uut(
.clk(clk),
.D(D),
.Q(Q)
);
initial begin
    clk=0;
    forever #5 
    clk = ~clk;
end
initial begin 
    D=0; #4;
    D=1; #7;
    D=0; #8;
    D=1; #10;
    $finish;
end    
endmodule
