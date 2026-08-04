`timescale 1ns / 1ps

module aes_controller(

    input wire clk,
    input wire rst,
    input wire start,

    output reg done,
    output reg [3:0] round,
    output reg busy

);

localparam

IDLE    = 2'd0,
RUNNING = 2'd1,
DONE    = 2'd2;

reg [1:0] state;

always @(posedge clk or posedge rst)
begin

    if(rst)
    begin

        state <= IDLE;
        round <= 0;
        busy <= 0;
        done <= 0;

    end

    else begin

        case(state)

        IDLE:

        begin

            done <= 0;

            if(start)

            begin

                busy <= 1;
                round <= 0;
                state <= RUNNING;

            end

        end

        RUNNING:

        begin

            if(round==10)

            begin



                busy <= 0;
                done <= 1;
                state <= DONE;

            end

            else

                round <= round + 1;

        end

        DONE:

        begin

            state <= IDLE;

        end

        endcase

    end

end

endmodule

