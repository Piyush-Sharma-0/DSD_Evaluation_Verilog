`timescale 1ns / 1ps
module tb_Full_Subtractor(

    );
reg a,b,c;
wire D,B_out;

Full_Subtractor uut(
.a(a),.b(b),.c(c),
.D(D),.B_out(B_out)
);
initial begin
a=0; b=0; c=0; #10
a=0; b=0; c=1; #10
a=0; b=1; c=0; #10
a=0; b=1; c=1; #10
a=1; b=0; c=0; #10
a=1; b=0; c=1; #10
a=1; b=1; c=0; #10
a=1; b=1; c=1; #10
$finish;

end

endmodule
