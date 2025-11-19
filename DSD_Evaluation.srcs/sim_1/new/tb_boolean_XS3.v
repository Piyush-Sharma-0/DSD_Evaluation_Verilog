`timescale 1ns / 1ps
module tb_Boolean_XS3();
reg a,b,c,d;
wire w,x,y,z;
Boolean_XS3 uut(
    .a(a),.b(b),.c(c),.d(d),
    .w(w),.x(x),.y(y),.z(z)
);
initial begin
    a=0; b=0; c=0; d=0; #10
    a=0; b=1; c=0; d=1; #10
    a=1; b=0; c=0; d=0; #10
    $finish;
end
endmodule
