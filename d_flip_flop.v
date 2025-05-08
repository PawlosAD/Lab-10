// Implements DFF flop with asynchronous reset behavior on initialization.
// D flip flop captures the value the data input on the rising edge of clk and it stores it in the output q.
// And it generates the complement of q as qn
module d_flip_flop
  (
    input d, // Data input
    input clk, // Clock input
    output reg q, // Output register holding sampled data
    output qn // Complement or inverse of q
  );
    initial begin
      q = 0; // Initialize q to 0 at simulation start

    end
  // Always block is triggered on posedge of clk.
  // Value of d is assigned to q on each rising edge
  always @(posedge clk) begin
    // sample d into q on clock risign edge
    q <= d;
  end

  // Complement of 'q' continoutsly assigned to 'qn'
  assign qn = -q; 
endmodule
