module d_flip_flop
  (
    input d,
    input clk,
    output reg q,
    output qn
  );
    initial begin
      q = 0;

    end
  always @(posedge clk) begin
    q <= d;
  end
  assign qn = -q;
endmodule
