module mod_div(
    input clk,
    input reset,
    output stage0,
    output stage1,
    output stage2,
    output mc_out
);

wire q0,q1,q2,q3,q4;




assign stage0 = q0;
assign stage1 = q1;
assign stage2 = q2;



full_adder inst0(
    .A(q0),
    .B(1'b0),
    .Cin(1'b1),
    .Cout(),
    .Y()
);

full_adder inst1(
    .A(q1),
    .B(1'b0),
    .Cin(inst0.Cout),
    .Cout(),
    .Y()
);

full_adder inst2(
    .A(q2),
    .B(1'b0),
    .Cin(inst1.Cout),
    .Cout(),
    .Y()
);


d_FF d_FFinst0(
    .data(inst0.Y),
    .clk(clk),
    .reset(mc_out|reset),
    .Q(q0),
    .barQ()
);


d_FF d_FFinst1(
    .data(inst1.Y),
    .clk(clk),
    .reset(mc_out|reset),
    .Q(q1),
    .barQ()
);

d_FF d_FFinst2(
    .data(inst2.Y),
    .clk(clk),
    .reset(mc_out|reset),
    .Q(q2),
    .barQ()
);

d_FF d_FFinst3(
    .data((q2 & !q1 & q0)),
    .clk(clk),
    .Q(mc_out),
    .reset(reset),
    .barQ()
);




endmodule