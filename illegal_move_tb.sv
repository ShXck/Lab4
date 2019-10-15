module illegal_move_tb();

logic [1:0] pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8, pos9;
logic [8:0] player1_enabler, player2_enabler; 
logic illegal;

illegal_move_checker DUT(pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8, pos9, player1_enabler, player2_enabler, illegal);

initial begin

#200 pos1 = 2'b01; pos2 = 2'b10; pos3 = 2'b00; pos4 = 2'b00; pos5 = 2'b00; pos6 = 2'b00; pos7 = 2'b00; pos8 = 2'b00; pos9 = 2'b00; player1_enabler = 9'b0; player2_enabler = 9'b0;
#200 player2_enabler = 9'b1000;
#200 player2_enabler = 9'b0;
 

end

endmodule


