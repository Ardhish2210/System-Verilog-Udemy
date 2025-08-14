`timescale 1ns/1ps
`include "test.sv"

module tb;
  
  reg rst = 0;
  reg clk;//////rst represent DUT reset Signal

  /////// User Logic goes here
  
  initial begin
    rst = 1'b0;
    clk = 1'b0;
    #60 rst = 1'b1;
  end

  /////// User code ends here
  
  test t1 = new();
  
  initial begin
    #59;
    t1.no_gen(rst);
    t1.display();
  end
  
  
endmodule
