module position_adder(input logic [3:0] player1_pos, player2_pos, input logic move_pulse, player1_enable, player2_enable, output logic [3:0] p1_new_pos, p2_new_pos);


always @(posedge move_pulse)
		begin
			if(player1_enable)
				p1_new_pos <= player1_pos + 4'b1;
			else if(player2_enable)
				p2_new_pos <= player2_pos + 4'b1;
		end
endmodule
