module ttt_main_tb();

logic clock, reset, player1, player2, assign_pulse, start_pulse;
logic [3:0] player1_pos, player2_pos;
logic [1:0] pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8, pos9, winner;

ttt_main DUT(clock, reset, player1, player2, assign_pulse, start_pulse, player1_pos, player2_pos, pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8, pos9, winner);

initial begin

clock = 0;

for(int i = 0; i < 250; i++) #5 clock = ~clock;

end


initial begin

reset = 1'b1; player1 = 1'b0; player2 = 1'b0; assign_pulse = 1'b1; assign_pulse = 1'b0; start_pulse = 1'b0;

#25 reset = 1'b0; assign_pulse = 1'b1; start_pulse = 1'b1;

#25 player1 = 1'b1; player2 = 1'b0; player1_pos = 4'b0100; 

#50 player1 = 1'b0; player2 = 1'b1; player2_pos = 4'b0001;

#25 player1 = 1'b1; player2 = 1'b0; player1_pos = 4'b1000;

#25 player1 = 1'b0; player2 = 1'b1; player2_pos = 4'b0101;

#25 player1 = 1'b1; player2 = 1'b0; player1_pos = 4'b0011;

#25 player1 = 1'b1; player2 = 1'b0; player1_pos = 4'b0000;

end


endmodule
