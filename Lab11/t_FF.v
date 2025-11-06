module t_FF(
    input T,
    input clk,
    output Q,
    output barQ
);

jk_FF inst(
    .J(T),
    .K(T),
    .clk(clk),
    .Q(Q),
    .barQ(barQ)

);
    



endmodule

