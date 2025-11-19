`timescale 1ns / 1ps

module JK_FlipFlop(
    input J,K,clk,
    output reg q,
    output q_bar
    );
    assign q_bar=~q;
    
    always @(posedge clk) begin
        case ({J,K})
            2'b10: q<=1'b1;
            2'b01: q<=1'b0;
            2'b00: q<=q;
            2'b11: q<=q_bar;
        endcase
    end
endmodule
