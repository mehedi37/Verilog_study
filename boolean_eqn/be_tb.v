`timescale 1ns / 1ps
module be_tb;
reg aTB, bTB, cTB, dTB;
wire zTB;
be uut(.a(aTB), .b(bTB), .c(cTB), .d(dTB), .z(zTB));
initial begin
  $dumpfile("be_tb.vcd");
  $dumpvars(0, be_tb);    // Initialize Inputs of the UUT
  // Initialize Inputs
  // Initialize Inputs
  aTB = 0;
  bTB = 0;
  cTB = 0;
  dTB = 0;

  #20 aTB = 0; bTB = 0; cTB = 0; dTB = 0;
  #40 aTB = 0; bTB = 0; cTB = 0; dTB = 1;
  #60 aTB = 0; bTB = 0; cTB = 1; dTB = 0;
  #80 aTB = 0; bTB = 0; cTB = 1; dTB = 1;
  #100 aTB = 0; bTB = 1; cTB = 0; dTB = 0;
  #120 aTB = 0; bTB = 1; cTB = 0; dTB = 1;
  #140 aTB = 0; bTB = 1; cTB = 1; dTB = 0;
  #160 aTB = 0; bTB = 1; cTB = 1; dTB = 1;
  #180 aTB = 1; bTB = 0; cTB = 0; dTB = 0;
  #200 aTB = 1; bTB = 0; cTB = 0; dTB = 1;
  #220 aTB = 1; bTB = 0; cTB = 1; dTB = 0;
  #240 aTB = 1; bTB = 0; cTB = 1; dTB = 1;
  #260 aTB = 1; bTB = 1; cTB = 0; dTB = 0;
  #280 aTB = 1; bTB = 1; cTB = 0; dTB = 1;
  #300 aTB = 1; bTB = 1; cTB = 1; dTB = 0;
  #320 aTB = 1; bTB = 1; cTB = 1; dTB = 1;
  #340;
end

initial begin
  $monitor("a=%b, b=%b, c=%b, d=%b, z=%b", aTB, bTB, cTB, dTB, zTB);
end
endmodule