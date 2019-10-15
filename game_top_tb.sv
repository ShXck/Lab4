module game_top_tb();

logic clock, reset, player1_sw, player2_sw, start_pulse, move_pulse, assign_pulse;
logic Hsynq, Vsynq, blank, nsync, clk_25M; 
logic [7:0] Red, Green, Blue;
logic [6:0] display_pos;
logic player1, player2;

game_top DUT(clock, reset, player1_sw, player2_sw, start_pulse, move_pulse, assign_pulse, Hsynq, Vsynq, blank, nsync, clk_25M, Red, Green, Blue, display_pos, player1, player2);

initial begin
clock = 0;
for(int i = 0; i < 50; i++) #5 clock = ~clock;
end 

initial begin

#50 reset = 1'b0; start_pulse = 1'b0; move_pulse = 1'b0; assign_pulse = 1'b0; player1_sw = 1'b0; player2_sw = 1'b0;
#50 start_pulse = 1'b1; move_pulse = 1'b1; player1_sw = 1'b1;
#50 move_pulse = 1'b1; player1_sw = 1'b0; player2_sw = 1'b1;
#50 move_pulse = 1'b1; player1_sw = 1'b1; player2_sw = 1'b0;
#50 move_pulse = 1'b1; player1_sw = 1'b0; player2_sw = 1'b1;

end

endmodule
