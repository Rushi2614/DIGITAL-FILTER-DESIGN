// Code your design here
module FIR_Filter (
    input clk,
    input rst,
    input [7:0] x_in,
    output reg [15:0] y_out
);

    // 4 filter coefficients
    parameter h0 = 1, h1 = 2, h2 = 3, h3 = 4;

    reg [7:0] x_reg [0:3];  // shift register for input samples

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            x_reg[0] <= 0;
            x_reg[1] <= 0;
            x_reg[2] <= 0;
            x_reg[3] <= 0;
            y_out <= 0;
        end
        else begin
            // Shift the inputs
            x_reg[3] <= x_reg[2];
            x_reg[2] <= x_reg[1];
            x_reg[1] <= x_reg[0];
            x_reg[0] <= x_in;

            // Perform FIR calculation
            y_out <= h0*x_reg[0] + h1*x_reg[1] + h2*x_reg[2] + h3*x_reg[3];
        end
    end

endmodule
