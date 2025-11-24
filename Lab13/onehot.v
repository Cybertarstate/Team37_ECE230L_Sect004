module onehot(
    input w,
    input clk,
    input reset,
    output z, Astate, Bstate, Cstate, Dstate, Estate
);
    wire Anext, Bnext, Cnext, Dnext, Enext;

    dff Adff(
        .Default(1'b1),
        .D(Anext),
        .clk(clk),
        .reset(reset),
        .Q(Astate)
    );

    dff Bdff(
        .Default(1'b0),
        .D(Bnext),
        .clk(clk),
        .reset(reset),
        .Q(Bstate)
    );

    dff Cdff(
        .Default(1'b0),
        .D(Cnext),
        .clk(clk),
        .reset(reset),
        .Q(Cstate)
    );
    
    dff Ddff(
        .Default(1'b0),
        .D(Dnext),
        .clk(clk),
        .reset(reset),
        .Q(Dstate)
    );

    dff Edff(
        .Default(1'b0),
        .D(Enext),
        .clk(clk),
        .reset(reset),
        .Q(Estate)
    );
    assign z = Cstate | Estate;

    assign Anext = 1'b0;
    assign Bnext = (~w & Astate) | (~w & Dstate) | (~w & Estate);
    assign Cnext = (~w & Bstate) | (~w & Cstate);
    assign Dnext = (w & Astate) | (w & Bstate) | (w & Cstate);
    assign Enext = (w & Dstate) | (w & Estate);
endmodule