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
    
    always @(posedge clk or posedge reset) begin 
        if (reset == 1'b1)
            Q <= 1'b0;
        else
            Q <= data;
    end

    assign barQ = ~Q;


endmodule
