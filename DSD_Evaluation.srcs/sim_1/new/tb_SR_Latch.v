`timescale 1ns / 1ps
module tb_SR_Latch(
    );
reg S,R;
wire Q,not_Q;
SR_Latch uut(
.S(S),.R(R),
.Q(Q),.not_Q(not_Q)
);
initial begin
S=1; R=0; #10
S=1; R=1; #10
S=0; R=1; #10
S=1; R=1; #10
S=0; R=0; #10
$finish;
end
endmodule