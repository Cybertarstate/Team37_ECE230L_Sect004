module top(
    input [3:0] sw,
    input btnC,
    output [5:0] led
);
    d_FF part1(
        .data(sw[0]),
        .Q(led[0]),
        .barQ(led[1]),
        .clk(btnC)
    );
    jk_FF part2(
        .J(sw[1]),
        .K(sw[2]),
        .clk(btnC),
        .Q(led[2]),
        .barQ(led[3])
    );

    t_FF part3(
        .T(sw[3]),
        .clk(btnC),
        .Q(led[4]),
        .barQ(led[5])
    );

endmodule