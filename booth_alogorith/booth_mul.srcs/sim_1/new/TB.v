`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/15/2024 07:22:39 PM
// Design Name: 
// Module Name: TB
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

// vlsiverify.com
module TB();
  reg [3:0] A, B;
  wire [7:0] P;
  
  array_multiplier am(A,B,P);
  
  initial begin
    $monitor("A = %b: B = %b --> P = %b, P(dec) = %0d", A, B, P, P);
    A = 1; B = 0; #3;
    A = 7; B = 5; #3;
    A = 8; B = 9; #3;
    A = 4'hf; B = 4'hf;
  end
endmodule