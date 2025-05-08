// Implements T type(toggle) flip flop through internally using JK type flip flop.
// The output toggles when the T input is 1(high) on a rising clock edge in a T flip flop.
// And it holds its state when T is 0(low)
module t_flip_flop
  (
    input t, // t input that causes output to toggle on rising clock edge when high
    input clk, // triggers state change on rising edge
    output q, // output of flip flop
    output qn // inverse of q
  );
    wire j, k; // internal wires for j and k inputs for JK flip flop
  // creates t flip flop behavior using jk flip flop
    assign j = t; // sets j input of jk flip flop to t
    assign k = t; // sets K input of jk flip flop to t
  
// Flip flop toggles state when both J and K are 1, and it holds when 0.
  jk_flip_flop jkff(
    .j(j), // connect t to j input
    .k(k) // connect to to k input
    .clk(clk), // connect clock input
    .q(q), // connect output q
    .qn(qn) // connect complement Qn
  );
endmodule
