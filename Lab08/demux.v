

//2 bit wide, 2 output demux
module de_mux(
    input [3:0] In,
    input [1:0] Sel,
    input Enable,
    output [3:0] Local_Lib,FD,SCHOOL,RIBS
);

    assign Local_Lib = Enable ? (Sel == 2'b00 ? In : 0) : 0;
    assign FD = Enable ? (Sel == 2'b01 ? In : 0) : 0;
    assign SCHOOL = Enable ? (Sel == 2'b10 ? In : 0) : 0;
    assign RIBS = Enable ? (Sel == 2'b11 ? In : 0) : 0;

endmodule
