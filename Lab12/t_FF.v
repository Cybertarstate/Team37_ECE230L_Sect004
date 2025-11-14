module t_FF(
    input T,
    input clk,
    input reset,
    output Q,
    output barQ
);

jk_FF inst(
    .J(T),
    .K(T),
    .clk(clk),
    .reset(reset),
    .Q(Q),
    .barQ(barQ)

);
    



endmodule

