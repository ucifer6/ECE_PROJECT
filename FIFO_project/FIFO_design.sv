// Code your design here
module FIFO(input clk, rst, wr, rd, output empty, full, input[7:0] dataIn, output reg[7:0]dataOut); 
  // define pinter
  reg[3:0] wrptr = 0;
  reg[3:0] rdptr = 0;
  // coutter for tracking
  reg[4:0]count = 0;
  // memory
  reg[7:0] mem[15:0];
  
  always @(posedge clk)
    begin
      if(rst == 1'b1)
        begin 
          wrptr <= 0;
          rdptr <= 0;
          count <= 0;
        end
      else if (wr && !full)
        begin
          //write the data
          mem[wrptr]<= dataIn;
          wrptr  <= wrptr+1;
          count  <= count+1;
        end
      else if(rd && !empty)
        begin 
          // read data
          dataOut <= mem[rdptr];
          rdptr <= rdptr+1;
          count <= count-1;
         end
     end
  //checking the status of fifo
  assign empty = (count == 0) ?1'b1:1'b0;
  assign full = (count == 16) ?1'b1:1'b0;
  
endmodule

// Define an interface for fifo
interface fifo_if;
  logic clock, rd, wr;
  logic full, empty;
  logic[7:0] data_in;
  logic[7:0] data_out;
  logic rst;
endinterface
