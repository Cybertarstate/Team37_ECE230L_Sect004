// Implement ones complement module
module ones_complement (
    input [9:2]sw,
    output [2:5]led
);

    wire carry_wire1,carry_wire2,carry_wire3;

      full_adder full_adder0_inst(
        .A(sw[2]),
        .B(sw[6]),
        .Cin(0),
        .Y(led[2]),
        .Cout(carry_wire1)
    );

  full_adder full_adder1_inst(
        .A(sw[3]),
        .B(sw[7]),
        .Cin(carry_wire1),
        .Y(led[3]),
        .Cout(carry_wire2)
    );
      full_adder full_adder2_inst(
        .A(sw[4]),
        .B(sw[8]),
        .Cin(carry_wire2),
        .Y(led[4]),
        .Cout(carry_wire3)
    );
    full_adder full_adder3_inst(
        .A(sw[5]),
        .B(sw[9]),
        .Cin(carry_wire3),
        .Y(led[5]),
        .Cout(0) //idk lul
    );
endmodule