// Top level module connects user inputs to three different flip flop modules ranging from D, JK, and T flip flops and it maps their outputs to LEDs.
module top(
  input [15:0] sw, // 16 input switches
  input btnC, // center button as clock input
  input [5:0] led // 6 output LEDs to display flip flop outputs
);
  d_flip_flop dff(
    .d(sw[0]), // D input
    .clk(btnC),// clock input
    .q(led[0]), // q output
    .qn(led[1]) // Qn output
  );

  jk_flip_flop jkff(
    .(sw[1]), // j input
    .k(sw[2]), // k input
    .clk(btnC), // clock input
    .q(led[4]), // q output
    .qn(led[3]) // qn output
  );

  t_flip_flop tff
  .t(sw[3]), // t input
  .clk(btnC), // clock input
  .q(led[4]), // q output
  .qn(led[5]) // qn output
  );

endmodule
  
