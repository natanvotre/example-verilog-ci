// dff.sv
`timescale 1us/1ns

module dff (
    output logic q,
    input logic clk, d
);

always @(posedge clk) begin
    q <= d;
end

wire p;
dff1 dff1 (
    .q(p),
    .clk(clk),
    .d(d)
);

endmodule
