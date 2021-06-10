module count_ctrl(
    input start,
    input rst,
    input clk,
    input d,
    output [1:0] state,
    output done
    );

    // Create the enums
    enum reg [1:0] {
      IDLE  = 2'b00,
      COUNT = 2'b01,
      CHECK = 2'b10,
      DONE  = 2'b11
    } cnt_ps, cnt_ns;

    // Define the module's interaction with clock and reset
    always_ff @(posedge clk, negedge rst) begin
        if (~rst)       cnt_ps <= IDLE;
        else            cnt_ps <= cnt_ns;
    end

    /*
    IDLE: Waits for the start single to begin the calculation
          Also drops the done signal low
    COUNT: Does the following calulation on a: a & (a-1)
           This essentially removes the closest '1' to the right.
           This is repeated till there are no 1's
    CHECK: Check if there are any 1's
           If yes, go to count
           If no, go to done
    DONE:  Set the done signal and load cnt into cntout
    */
    always_comb begin
      case (cnt_ps)
                IDLE:   if (start)                  cnt_ns = COUNT;
                        else                        cnt_ns = IDLE;

                COUNT:                              cnt_ns = CHECK;

                CHECK:  if (d == 0)                 cnt_ns = DONE;
                        else                        cnt_ns = COUNT;

                DONE:                              cnt_ns = IDLE;
      endcase
    end

    assign done = cnt_ps == DONE ? 1 : 0;
    assign state = cnt_ps;

endmodule
