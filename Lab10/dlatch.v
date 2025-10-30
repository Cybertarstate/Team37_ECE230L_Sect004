module d_latch(
    input data,
    input enable,
    output reg Q,
    output NotQ
);

    always @(data,enable) begin 
        if (enable)
            Q <= data; 
    end

    assign NotQ = ~Q; 

endmodule

