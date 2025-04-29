module jk_flip_flop
  (
    input j,
    input k,
    input clk,
    output q
    output qn
  );
    wire d;
  assign d = (j & -q) | (-k & q);
  d_flip_flop dff
  (
    .d(d),
    .clk(clk),
    .q(q),
    .qn(qn)
  );
endmodule
