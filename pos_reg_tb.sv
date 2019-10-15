module pos_reg_tb();

logic clock, reset, player1_enable, player2_enable, illegal_move;
logic[1:0] pos;

position_register DUT(clock, reset, player1_enable, player2_enable, illegal_move, pos);

initial begin
clock = 0;
for(int i = 0; i < 50; i++) #5 clock = ~clock;
end 

initial begin

#10 reset = 1'b1; player1_enable = 1'b0; player2_enable = 1'b0; illegal_move = 1'b0;
#10 reset = 1'b0; player1_enable = 1'b1; pos = 2'b01;
#10 player1_enable = 1'b0; player2_enable = 1'b1; illegal_move = 1'b1;

end

endmodule
