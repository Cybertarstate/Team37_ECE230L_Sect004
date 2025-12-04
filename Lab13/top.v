module top(
    input sw, // w
    output [9:0] led, // see IO table
    input btnC, // clk
    input btnU // reset
);

    binary inst1(
        .w(sw),
        .clk(btnC),
        .reset(btnU),
        .z(led[1]),
        .State(led[9:7])
    );
    
    onehot inst2(
        .w(sw),
        .clk(btnC),
        .reset(btnU),
        .z(led[0]),
        .Astate(led[2]),
        .Bstate(led[3]),
        .Cstate(led[4]),
        .Dstate(led[5]),
        .Estate(led[6])
    );

endmodule