// Implement ones_complement module
module ones_complement (
    input [3:0]A,
    input [3:0]B,    
    output [3:0]Y
);

    wire carry_wire[7:0], out_wire[3:0];
      full_adder full_adder0_inst(
        .A(A[0]),
        .B(B[0]),
        .Cin(1`b0),
        .Y(out_wire[0]),
        .Cout(carry_wire[0])
    );

  full_adder full_adder1_inst(
        .A(A[1]),
        .B(B[1],
        .Cin(carry_wire[0]),
        .Y(out_wire[1]),
        .Cout(carry_wire[1])
    );
      full_adder full_adder2_inst(
        .A(A[2]),
        .B(B[2]),
        .Cin(carry_wire[1]),
        .Y(out_wire[2]),
        .Cout(carry_wire[2])
    );
    full_adder full_adder3_inst(
        .A(A[3]),
        .B(B[3]),
        .Cin(carry_wire[2]),
        .Y(out_wire[3]),
        .Cout(carry_wire[3])
    );
    full_adder full_adder4_inst(
        .A(out_wire[0]),
        .B(1'b0),
        .Cin(carry_wire[3]),
        .Y(Y[0]),
        .Cout(carry_wire[4])
    );
    full_adder full_adder5_inst(
        .A(out_wire[1]),
        .B(1'b0),
        .Cin(carry_wire[4]),
        .Y(Y[1]),
        .Cout(carry_wire[5])
    );
    full_adder full_adder6_inst(
        .A(out_wire[2]),
        .B(1'b0),
        .Cin(carry_wire[5]),
        .Y(Y[2]),
        .Cout(carry_wire[6])
    );
    full_adder full_adder7_inst(
        .A(out_wire[3]),
        .B(1`b0),
        .Cin(carry_wire[6]),
        .Y(Y[3]),
        .Cout(carry_wire[7])
    );
endmodule