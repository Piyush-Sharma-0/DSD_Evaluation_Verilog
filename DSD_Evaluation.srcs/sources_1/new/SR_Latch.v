`timescale 1ns / 1ps

module SR_Latch(
input S,R,
output reg Q=0,not_Q
    );
always @(*) begin
    if (~S & ~R) begin
        Q      = 1'bx;
        not_Q  = 1'bx;
    end
    else begin
        Q      = ~(S & not_Q);
        not_Q  = ~(R & Q);
    end
end
endmodule
