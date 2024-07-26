`timescale 1ns / 1ps
module D_flip_flop(d, clk, rst,q);
input d, clk, rst;
output q;
reg q;
always @(negedge rst, negedge clk)
begin
if(!rst)
q = 0;
else 
q = d;
end
endmodule
