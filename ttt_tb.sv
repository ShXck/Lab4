module ttt_tb();

logic clock,reset,player1,player2;
logic[3:0] player1_pos, player2_pos;
logic [1:0] pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8, pos9, winner;

ttt_main DUT(clock,reset,player1,player2, player1_pos, player2_pos, pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8, pos9, winner);

initial begin
clock = 0;
for(int i = 0; i < 50; i++) #5 clock = ~clock;
end 

initial begin

#50 reset = 1'b1; player1 = 1'b0; player2 = 1'b0; player1_pos = 4'b0000; player2_pos = 4'b0000;
#50 reset = 1'b0; player1 = 1'b1; player2 = 1'b0; player1_pos = 4'b0001; player2_pos = 4'b0000;
#50 reset = 1'b0; player1 = 1'b0; player2 = 1'b1; player1_pos = 4'b0001; player2_pos = 4'b0100;
#50 reset = 1'b0; player1 = 1'b1; player2 = 1'b0; player1_pos = 4'b0011; player2_pos = 4'b0000;
#50 reset = 1'b0; player1 = 1'b0; player2 = 1'b1; player1_pos = 4'b0011; player2_pos = 4'b1000;

end

endmodule