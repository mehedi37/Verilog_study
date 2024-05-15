module _24dec(
  input [1:0] a,
  input e,
  reg [3:0] y
  // Declare y as a reg,
  // as verilog does not allow a wire to be assigned in an always block
);

always @(*)
begin
  if (e == 1'b0)
    y = 4'b0000;
  else
    case(a)
      2'b00: y = 4'b0001;
      2'b01: y = 4'b0010;
      2'b10: y = 4'b0100;
      2'b11: y = 4'b1000;
    endcase
end

endmodule