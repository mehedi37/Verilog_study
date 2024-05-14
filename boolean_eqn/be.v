module be(
  input a, b, c, d,
  output z
);
  assign z = a & c | b & d;   // z = ab + cd
endmodule