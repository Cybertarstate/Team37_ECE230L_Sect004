// Implement ones_complement module
module ones_compliment (
    input [3:0]A,
    input [3:0]B,    
    output [3:0]Y
);

    wire carry_wire1[3:0], carry_wire2[2:0], out_wire[3:0];
      full_adder full_adder0_inst(
        .A(A[0]),
        .B(B[0]),
        .Cin(1'b0),
        .Y(out_wire[0]),
        .Cout(carry_wire1[0])
    );

  full_adder full_adder1_inst(
        .A(A[1]),
        .B(B[1]),
        .Cin(carry_wire1[0]),
        .Y(out_wire[1]),
        .Cout(carry_wire1[1])
    );
      full_adder full_adder2_inst(
        .A(A[2]),
        .B(B[2]),
        .Cin(carry_wire1[1]),
        .Y(out_wire[2]),
        .Cout(carry_wire1[2])
    );
    full_adder full_adder3_inst(
        .A(A[3]),
        .B(B[3]),
        .Cin(carry_wire1[2]),
        .Y(out_wire[3]),
        .Cout(carry_wire1[3])
    );
    full_adder adder_final0_inst(
        .A(out_wire[0]),
        .B(1'b0),
        .Cin(carry_wire1[3]),
        .Y(Y[0]),
        .Cout(carry_wire2[0])
    );
    full_adder adder_final1_inst(
        .A(out_wire[1]),
        .B(1'b0),
        .Cin(carry_wire2[0]),
        .Y(Y[1]),
        .Cout(carry_wire2[1])
    );
    full_adder adder_final2_inst(
        .A(out_wire[2]),
        .B(1'b0),
        .Cin(carry_wire2[1]),
        .Y(Y[2]),
        .Cout(carry_wire2[2])
    );
    full_adder adder_final3_inst(
        .A(out_wire[3]),
        .B(1'b0),
        .Cin(carry_wire2[2]),
        .Y(Y[3])
    );
endmodule