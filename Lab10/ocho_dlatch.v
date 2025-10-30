module ocho_d_latch(
    input [7:0] data,
    input enable,
    output reg [7:0] Q,
    output [7:0] NotQ
);

    always @(data, enable) begin 
        if (enable)
            Q <= data; 
    end

    assign NotQ = ~Q; 

endmodule

