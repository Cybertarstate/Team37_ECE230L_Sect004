
//2 bit wide, 2 output demux
module de_mux(
    input [3:0] In,
    input Sel[1:0],
    input Enable,
    output [3:0] Local_Lib,FD,SCHOOL,RIBS
);

    assign Local_Lib = (Sel == 'b00 ? In : 0);
    assign FD = (Sel == 'b01 ? In : 0);
    assign SCHOOL = (Sel == 'b10 ? In : 0);
    assign RIBS = (Sel == 'b11 ? In : 0);

endmodule


