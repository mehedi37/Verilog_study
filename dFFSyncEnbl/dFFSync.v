module dFFSync (
  input wire clk, reset, d, en,
  output reg q
);

  always @(posedge clk or posedge reset)
  begin
    if (reset)
      q <= 1'b0;
    else if (en)
      q <= d;
  end
endmodule