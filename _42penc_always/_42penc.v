//  4 to 2 priority encoder using always blocking assignment
module _42penc(
  input [3:0] y,
  output reg [1:0] a
);

  always @(*)
  begin
    if (y[3]) a = 2'b11;
    else if (y[3] == 1) a = 2'b11;
    else if (y[3:2] == 2'b01) a = 2'b10;
    else if (y[3:1] == 3'b001) a = 2'b01;
    else if (y == 4'b0001) a = 2'b00;
    else if (y == 4'b0000) a = 2'b00;
  end

endmodule