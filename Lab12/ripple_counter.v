module ripple_counter (
    input clk,reset,
    output [2:0]y
);

t_FF inst1(
  .T(reset),
  .clk(clk),
  .Q(y[0])
);

t_FF inst2(
  .T(reset),
  .clk(isnt1.Q),
  .Q(y[1])
);

t_FF inst3(
  .T(reset),
  .clk(inst2.Q),
  .Q(y[2])
);

endmodule