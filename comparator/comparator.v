module comparator (   // comparator function
  input x,
  input y,
  output z
);

// variable
wire x_, y_, p, q;

// logic
not(x_, x);
not(y_, y);
and(p, x, y);
and(q, x_, y_);
or(z, p, q);

endmodule
