module pos_adder_tb();


logic [3:0] player1_pos, player2_pos; 
logic move_pulse, player1_enable, player2_enable;
logic [3:0] p1_new_pos, p2_new_pos;

position_adder DUT(player1_pos, player2_pos, move_pulse, player1_enable, player2_enable, p1_new_pos, p2_new_pos);

initial begin

#5 player1_pos = 4'b0000; player2_pos = 4'b0011; move_pulse = 1'b0; player1_enable = 1'b0; player2_enable = 1'b0;

#50 move_pulse = 1'b1; player1_enable = 1'b1;

#25 move_pulse = 1'b0; player1_enable = 1'b0;

#50 move_pulse = 1'b1; player2_enable = 1'b1;

#25 move_pulse = 1'b0; player2_enable = 1'b0;


#50 move_pulse = 1'b1; player1_enable = 1'b1;

#25 move_pulse = 1'b0; player1_enable = 1'b0;

#50 move_pulse = 1'b1; player2_enable = 1'b1;

#25 move_pulse = 1'b0; player2_enable = 1'b0;

end

endmodule
