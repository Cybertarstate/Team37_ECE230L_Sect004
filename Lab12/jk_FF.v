module jk_FF(
    input J,
    input K,
    input clk,
    output Q,
    output barQ
);

    wire internal_Q;
    wire not_internal_Q;
    wire internal_D;


    assign internal_D = (J & not_internal_Q)|(~K & internal_Q);
    assign Q = internal_Q;
    assign barQ = not_internal_Q;


    d_FF inst(
        .data(internal_D),
        .Q(internal_Q),
        .clk(clk),
        .barQ(not_internal_Q)
    );
    



endmodule

