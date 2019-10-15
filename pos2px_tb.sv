module pos2px_tb();

logic [3:0] player_pos;
logic [9:0] pixx;

pos_to_pixelx DUT(player_pos, pixx);

initial begin

#100 player_pos = 4'd0;
#100 player_pos = 4'd1;
#100 player_pos = 4'd2;
#100 player_pos = 4'd3;
#100 player_pos = 4'd4;
#100 player_pos = 4'd5;
#100 player_pos = 4'd6;
#100 player_pos = 4'd7;
#100 player_pos = 4'd8;

end

endmodule

