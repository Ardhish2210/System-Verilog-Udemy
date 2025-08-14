`timescale 1ns/1ps
`include "test.sv"

module tb;
  
  reg resetn = 0;
  reg clk;//////rst represent DUT reset Signal

  /////// User Logic goes here
  
  initial begin
    clk = 1'b0;
    resetn = 1'b0;
    #100 resetn = 1'b1;
    #50 resetn = 1'b0;
    #50 resetn = 1'b1;
  end
  
  /////// User code ends here
 
  test t1 = new();
  
  initial begin
    #201;
    t1.no_gen(resetn);
    t1.display();
  end
endmodule
