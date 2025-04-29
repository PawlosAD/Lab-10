module top(
  input [15:0] sw,
  input btnC,
  input [5:0] led
);
  d_flip_flop dff(
  .d(sw[0]),
  .clk(btnC),
  .q(led[0]),
  .qn(led[1])
  );

  jk_flip_flop jkff(
  .(sw[1]),
  .k(sw[2]),
  .clk(btnC),
  .q(led[4]),
    .qn(led[3])
  );

  t_flip_flop tff
  .t(sw[3]),
  .clk(btnC),
  .q(led[4]),
  .qn(led[5])
  );

endmodule
  
