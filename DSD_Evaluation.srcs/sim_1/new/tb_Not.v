`timescale 1ns / 1ps

module tb_Not(

    );

reg a;
wire y;

Not_Gate uut(
.a(a),
.y(y)
);

initial begin

a=0;
#10
a=1;
#10

$finish;

end

endmodule
