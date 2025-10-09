module half_sub(
    // Declare your A/B inputs
    input A, B,
    // Declare Y output
    output Y,
    // Declare carry output
    output carry
);
    // Enter logic equation here, still need to do k-maps
    assign Y = A ^ B; 
    assign borrow = ~A&B&Y;

endmodule