`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2023 05:15:15 AM
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
class transaction;
bit clk; //// we can also apply here four state data type logic 
bit rst; /// here we interest only in two state data type 
rand bit wreq, rreq; // active high
rand bit [7:0] wdata;
bit [7:0] rdata;
bit empty;
bit full;

constraint control_wr {
wreq dist {0 := 30, 1:=70};
}

constraint control_rd {
rreq dist {0 := 30, 1 := 70 };
}
constraint wr_rd {

wreq != rreq;
}
endclass

module TB(

    );
endmodule
