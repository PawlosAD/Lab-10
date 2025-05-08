// Implements a JK type flip flop from internally using D flip flop.
// JK flip flop behavior is acheived through deriving D input from J, K, and current Q values using the equation: D = (J & -Q) | (-K & Q)
// JK flip flop captures this derived value into output Q on each risign edge of clock.
module jk_flip_flop
  (
    input j, // J input that controls setting the output
    input k, // K inpout that controls resetting the output
    input clk, // Clock input that triggers the state change on rising edge
    output q // output of flip flop
    output qn // Complement of q(inverse)
  );
    wire d; // Internal wire to hold derived D input for internal D flip flop wire d;
  assign d = (j & -q) | (-k & q); // Combinational logic to compute D input based on J, K and the current Q value.

  // Instantiation of D flip flop module that connects the derived D input and clock to the D flip flop and routes its outputs to q and qn.
  d_flip_flop dff
  (
    .d(d), // Connects derived d input to d flip flop's data input
    .clk(clk), // Connects clock input to d flip flop's clock input
    .q(q), // Connects D flip flop's output q to module output q
    .qn(qn) // connectes complement of Qn to module output qn
  );
endmodule
