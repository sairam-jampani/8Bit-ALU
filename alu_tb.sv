`timescale 1ns / 1ps

module alu_tb;

reg [7:0] a;
reg [7:0] b;
reg [2:0] sel;

wire [7:0] result;

alu uut (
    .a(a),
    .b(b),
    .sel(sel),
    .result(result)
);

initial begin

    a = 8'd20;
    b = 8'd10;

    sel = 3'b000; #10;   // Add
    sel = 3'b001; #10;   // Sub
    sel = 3'b010; #10;   // AND
    sel = 3'b011; #10;   // OR
    sel = 3'b100; #10;   // XOR
    sel = 3'b101; #10;   // NOT
    sel = 3'b110; #10;   // Left Shift
    sel = 3'b111; #10;   // Right Shift

    $finish;

end

endmodule
