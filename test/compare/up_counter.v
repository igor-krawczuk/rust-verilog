module up_counter (
    out,
    enable,
    clk,
    reset,
);
    output [7:0] out;
    input enable, clk, reset;
    reg [7:0] out;
    always @(posedge clk)
    if (reset)
        out <= 8'b0;
    else if (enable) begin
        out <= out + 1;
    end
endmodule
