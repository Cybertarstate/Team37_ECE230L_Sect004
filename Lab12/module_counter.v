module mod_div(
    input clk
    output stage0,
    output stage1,
    output stage2
);
wire comp0;

assign comp0 = (d_FFinst2.Q == 1'b1) ? ((d_FFinst1.Q == 1'b1) ? ((d_FFinst0.Q == 1'b0) ? 1'b1 : 1'b0): 1'b0): 1'b0;
assign stage0 = d_FFinst0.Q;
assign stage1 = d_FFinst1.Q;
assign stage2 = d_FFinst2.Q;


full_adder inst0(
    .A(d_FFinst0.Q),
    .B(clk),
    .Cin(1'b0),
    .Cout(),
    .Y()

);
full_adder inst1(
    .A(d_FFinst1.Q),
    .B(1'b0),
    .Cin(inst0.Cout),
    .Cout(),
    .Y()

);
full_adder inst2(
    .A(d_FFinst2.Q),
    .B(1'b0),
    .Cin(inst1.Cout),
    .Cout(),
    .Y()

);


d_FF d_FFinst0(
    .data(inst0.Y),
    .clk(clk),
    .reset(d_FFinst3.Q),
    .Q(),
    .barQ()
);


d_FF d_FFinst1(
    .data(inst1.Y),
    .clk(clk),
    .reset(d_FFinst3.Q),
    .Q(),
    .barQ()
);

d_FF d_FFinst2(
    .data(inst2.Y),
    .clk(clk),
    .reset(d_FFinst3.Q),
    .Q(),
    .barQ()
);

d_FF d_FFinst3(
    .data(comp0),
    .clk(clk),
    .reset(1'b0),
    .Q(),
    .barQ()
);









endmodule
