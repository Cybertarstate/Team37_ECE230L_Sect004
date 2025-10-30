module mux(
    input [1:0] sel,
    input [7:0] from_zero, from_one, from_two, from_three,
    output reg [7:0] y

);

    always @(*) begin
        case(sel)
            2'b00: y <= from_zero;
            2'b01: y <= from_one;
            2'b10: y <= from_two;
            2'b11: y <= from_three;
        endcase
    end

endmodule