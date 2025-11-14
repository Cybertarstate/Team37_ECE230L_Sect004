module ripple_counter (
    input clk, reset,
    output [2:0]y
);

  

t_FF inst1(
  .T(1'b1),
  .reset(reset),
  .clk(clk),
  .Q(y[0])
);


t_FF inst2(
  .T(1'b1),
  .reset(reset),
  .clk(inst1.Q),
  .Q(y[1])
);

t_FF inst3(
  .T(1'b1),
  .reset(reset),
  .clk(inst2.Q),
  .Q(y[2])
);


endmodule
