module d_FF(
    input data,
    input clk,
    output reg Q,
    output barQ
);
    
    initial begin
        Q <= 0;
    end
    
    always @(posedge clk) begin 
            Q <= data; 
    end

    assign barQ = ~Q;


endmodule

