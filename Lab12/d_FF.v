module d_FF(
    input data,
    input clk,
    input reset,
    output reg Q,
    output barQ
);
    
    initial begin
        Q <= 0;
    end
    
    always @(posedge clk) begin 
        if (reset == 1'b1)
            Q <= 0;
        else
            Q <= data;
    end

    assign barQ = ~Q;


endmodule
