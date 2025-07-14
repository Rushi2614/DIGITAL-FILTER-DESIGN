// Code your testbench here
// or browse Examples
module tb_FIR_Filter;

reg clk, rst;
reg [7:0] x_in;
wire [15:0] y_out;

FIR_Filter uut (.clk(clk), .rst(rst), .x_in(x_in), .y_out(y_out));

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    $display("Time\tInput\tOutput");
    rst = 1; x_in = 0; #10;
    rst = 0;

    x_in = 8'd1; #10;
    $display("%0t\t%d\t%d", $time, x_in, y_out);

    x_in = 8'd2; #10;
    $display("%0t\t%d\t%d", $time, x_in, y_out);

    x_in = 8'd3; #10;
    $display("%0t\t%d\t%d", $time, x_in, y_out);

    x_in = 8'd4; #10;
    $display("%0t\t%d\t%d", $time, x_in, y_out);

    x_in = 8'd5; #10;
    $display("%0t\t%d\t%d", $time, x_in, y_out);

    x_in = 8'd6; #10;
    $display("%0t\t%d\t%d", $time, x_in, y_out);

    $finish;
end

endmodule
