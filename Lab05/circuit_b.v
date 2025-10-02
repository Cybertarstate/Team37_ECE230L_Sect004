module circuit_b(
    // Declare inputs
    input A,B,C,D,
    // Declare Y output
    output Y
);

    // Enter logic equation here
    assign Y = ((~C & ~D) | (~D & B) | (A & B));

endmodule
