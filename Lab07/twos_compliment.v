module twos_compliment(
    input [7:0]A,    
    output [7:0]Y
);

wire [7:0] carry_wire;

full_adder full_adder0_inst(
    .A(~A[0]),
    .B(1'b1),
    .Cin(1'b0),
    .Y(Y[0]),
    .Cout(carry_wire[0])
);
genvar i;
 generate
for(i=1; i<8; i=i+1)begin

full_adder full_adder_inst(


    .A(~A[i]),
    .B(1'b0),
   .Cin(carry_wire[i-1]),
    .Y(Y[i]),
    .Cout(carry_wire[i])
);
 end 
endgenerate

//full_adder full_adder1_inst(
//    .A(~A[1]),
//    .B(1'b0),
//    .Cin(carry_wire[0]),
//    .Y(Y[1]),
//    .Cout(carry_wire[1])
//);

//full_adder full_adder2_inst(
//    .A(A[2]),
//    .B(1'b0),
//    .Cin(carry_wire[1]),
//    .Y(Y[2]),
//    .Cout(carry_wire[2])
//);

//full_adder full_adder3_inst(
//    .A(A[3]),
//    .B(1'b0),
//    .Cin(carry_wire[2]),
//    .Y(Y[3]),
//    .Cout(carry_wire[3])
//);
//full_adder full_adder4_inst(
//    .A(A[4]),
//    .B(1'b0),
//    .Cin(carry_wire[3]),
//    .Y(Y[4]),
//    .Cout(carry_wire[4])
//);
//full_adder full_adder5_inst(
//    .A(A[5]),
//    .B(1'b0),
//    .Cin(carry_wire[4]),
//    .Y(Y[5]),
//    .Cout(carry_wire[5])
//);
//full_adder full_adder6_inst(
//    .A(A[6]),
//    .B(1'b0),
//    .Cin(carry_wire[5]),
//    .Y(Y[6]),
//    .Cout(carry_wire[6])
//);
//full_adder full_adder7_inst(
//    .A(A[7]),
//    .B(1'b0),
//    .Cin(carry_wire[6]),
//    .Y(Y[7]),
//    .Cout(carry_wire[7])
//);

endmodule
