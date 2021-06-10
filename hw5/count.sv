module  count  	(
                a_in,
                sel,
                clk,
                start,
                rst,
                done,
                cntout
                );
    // This is our parameter. It allows us to change the size of the module
    // in it's instantiation!
    parameter w = 32;

    input [w-1:0] a_in;
    input [1:0] sel;
    input clk;
    input start;
    input rst;
    output logic done;
    output logic [w-1:0] cntout;

    /*
    These are some extra variables I used to make the design
    d: It's basically 'done' but used for communication between modules
    state: tells the count module the state from controller
    a: This is our input data
    b: I ran into a weird issue with my calculation and I included this to fix
    it. It's just a-1.
    cnt: used to store answer before outputting to cntout
    */
    wire d;
    reg [1:0] state;
    reg [w-1:0] a;
    reg [w-1:0] b;
    reg [w-1:0] cnt;

    // Controller instantiation
    count_ctrl ctrl0(
      .start(start),
      .rst(rst),
      .clk(clk),
      .d(d),
      .state(state),
      .done(done)
    );

    // Set the d (it's 'done' just its being used to communicate with the ctrl)
    // I was having trouble with the calculation and I made 'b' to remedy
    assign d = (~rst || (state==2 && a == 0)) ? 0 : 1;
    assign b = a-1;

    // This block loads and modifies our input data
    always_ff @(posedge clk, negedge rst) begin
        if (~rst)   	     a <= a_in;
        else if (state == 1) a = a & b;
        else        	     a <= a;
    end

    // This block increments our count value
    always_ff @(posedge clk, negedge rst) begin
        if (~rst) 	     cnt <= 0;
	else if (state == 1) cnt <= cnt + 1;
	else 		     cnt <= cnt;
    end

    // This blocl loads cnt into cntout
    always_ff @(posedge clk, negedge rst) begin
        if (~rst)                        cntout <= 0;
        else if (state == 3 && sel == 2) cntout <= cnt;
        else if (state == 3 && sel == 1) cntout <= w - cnt;
    end
endmodule
