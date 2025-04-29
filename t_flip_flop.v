module t_flip_flop
  (
    input t,
    input clk,
    output q,
    output qn
  );
    wire j, k;
    assign j = t;
    assign k = t;

  jk_flip_flop jkff(
    .j(j),
    .k(k)
    .clk(clk),
    .q(q),
    .qn(qn)
  );
endmodule
