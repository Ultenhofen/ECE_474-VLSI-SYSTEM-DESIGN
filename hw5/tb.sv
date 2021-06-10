`timescale 1ns/10ps

module tb;
  // Create inputs and outputs
    reg [1:0] sel;
    reg clk,
        rst,
        start;
    wire done0, done1, done2, done3;
  // Create Clock
    always
    begin
      clk = 1'b1;
      #10;

      clk = 1'b0;
      #10;
    end
  // Create the count modules of width 4, 8, 16, 32
    reg [3:0] a_in0;
    wire [3:0] cntout0;
    count #(.w(4)) cnt0 (
    .a_in(a_in0),
    .sel(sel),
    .clk(clk),
    .start(start),
    .rst(rst),
    .done(done0),
    .cntout(cntout0)
    );

    reg [7:0] a_in1;
    wire [7:0] cntout1;
    count #(.w(8)) cnt1 (
    .a_in(a_in1),
    .sel(sel),
    .clk(clk),
    .start(start),
    .rst(rst),
    .done(done1),
    .cntout(cntout1)
    );

    reg [15:0] a_in2;
    wire [15:0] cntout2;
    count #(.w(16)) cnt2 (
    .a_in(a_in2),
    .sel(sel),
    .clk(clk),
    .start(start),
    .rst(rst),
    .done(done2),
    .cntout(cntout2)
    );

    reg [31:0] a_in3;
    wire [31:0] cntout3;
    count #(.w(32)) cnt3 (
    .a_in(a_in3),
    .sel(sel),
    .clk(clk),
    .start(start),
    .rst(rst),
    .done(done3),
    .cntout(cntout3)
    );

  /* Start the simulation
     All modules should be simulated at the same time
     Corner cases are tested and random numbers are tested
  */
    always @(posedge clk)
    begin
      a_in0 = 4'b0000;
      a_in1 = 2'h00;
      a_in2 = 4'h0000;
      a_in3 = 8'h00000000;

      start = 0;
      rst = 1;
      #10;
      rst = 0;
      #10;
      start = 1;
      #10;
      start = 0;
      #1000;
      #30;

      a_in0 = 4'b0101;
      a_in1 = 2'h43;
      a_in2 = 4'h98f2;
      a_in3 = 8'h12345678;

      start = 0;
      rst = 1;
      #10;
      rst = 0;
      #10;
      start = 1;
      #10;
      start = 0;
      #1000;
      #30;

      a_in0 = 4'b0011;
      a_in1 = 2'hd9;
      a_in2 = 4'h0101;
      a_in3 = 8'h87654321;

      start = 0;
      rst = 1;
      #10;
      rst = 0;
      #10;
      start = 1;
      #10;
      start = 0;
      #1000;
      #30;

      a_in0 = 4'b1111;
      a_in1 = 2'hff;
      a_in2 = 4'hffff;
      a_in3 = 8'hffffffff;

      start = 0;
      rst = 1;
      #10;
      rst = 0;
      #10;
      start = 1;
      #10;
      start = 0;
      #1000;
      #30;

      $stop;
    end
endmodule
