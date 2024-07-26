`timescale 1ns / 1ps
module TB_D_flip_flop();
reg clk, rst, d;
wire q;
D_flip_flop uut(.clk(clk), .rst(rst), .d(d), .q(q));
initial begin 
rst = 1'b0;
repeat(4)
#10 rst = ~rst;
end
initial begin
clk = 1'b0;
repeat(20)
#2 clk = ~clk;
end
initial begin
d = 1'b0;
repeat(10)
#4 d = ~d;
end
initial begin
#200 $finish;
end
endmodule
