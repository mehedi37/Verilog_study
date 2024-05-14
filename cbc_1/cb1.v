module cb1(
  input d, x, a,
  output l
);

  assign l = (~d) & (~x) & a | (~d) & x & a | d & (~x) & (~a) | d & (~x) & a | d & x & a;

endmodule