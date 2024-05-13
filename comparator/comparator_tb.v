`timescale 1ns/1ps
module comparator_tb;
  // inputs
  reg x1, y1;

  // outputs
  wire z1;
  // instantiate the Unit Under Test (uut)
  comparator uut(.x(x1), .y(y1), .z(z1));
  initial begin
    $dumpfile("comparator_tb.vcd");
    $dumpvars(0, comparator_tb);    // Initialize Inputs of the UUT
    // Initialize Inputs
    x1 = 0;
    y1 = 0;

    #20 x1 = 1;
    #20 y1 = 1;
    #20 y1 = 0;
    #20 x1 = 1;
    #40;
  end

  initial begin
    $monitor("x=%b, y=%b, z=%b", x1, y1, z1);
  end
endmodule