
//2 bit wide, 2 output demux
module de_mux(
    input [1:0] In,
    input Sel,
    output [1:0] Y1,
    output [1:0] Y2
);

    assign Y1 = (Sel == 1'b0 ? In : 0); // Drive Y1 if Sel == 0
    assign Y2 = (Sel == 1'b1 ? In : 0); // Drive Y2 if Sel == 1

endmodule


