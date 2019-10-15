module state_machine_tb();

logic clock, reset, player1_enable, player2_enable, illegal_move, draw, is_over;
logic player1_turn, player2_turn;

game_state_machine machine(clock, reset, player1_enable, player2_enable, illegal_move, draw, is_over, player1_turn, player2_turn);


initial begin

clock = 0;

for(int i = 0; i < 250; i++) #5 clock = ~clock;

end

initial begin

#25 reset = 1'b1; player1_enable = 1'b0; player2_enable = 1'b0; illegal_move = 1'b0; draw = 1'b0; is_over = 1'b0;
#50 reset = 1'b0; player1_enable = 1'b1; player2_enable = 1'b0;
#50 player1_enable = 1'b0; player2_enable = 1'b1;
#50 player1_enable = 1'b1; player2_enable = 1'b0; illegal_move = 1'b1;
#50 player1_enable = 1'b0; player2_enable = 1'b1; illegal_move = 1'b0;

end

endmodule
