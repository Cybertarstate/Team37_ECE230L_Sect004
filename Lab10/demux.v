module de_mux(
    input [7:0] data,
    input [1:0] sel,
    output reg [7:0] zero_latch,one_latch,two_latch,three_latch
);

      always @(*) begin 
        case(sel)
            2'b00: {zero_latch, one_latch, two_latch, three_latch} <= {data, 8'b0, 8'b0, 8'b0}; 
            2'b01: {zero_latch, one_latch, two_latch, three_latch} <= {8'b0, data, 8'b0, 8'b0};
            2'b10: {zero_latch, one_latch, two_latch, three_latch} <= {8'b0, 8'b0, data, 8'b0};
            2'b11: {zero_latch, one_latch, two_latch, three_latch} <= {8'b0, 8'b0, 8'b0, data};
        endcase
    end

endmodule