module ttt_main(input logic clock,
									 reset,
									 player1,
									 player2,
									 assign_pulse,
									 start_pulse,
			  input logic[3:0] player1_pos,
									 player2_pos,
			  output logic [1:0] pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8, pos9, winner, player1_turn, player2_turn);

logic [8:0] player1_pos_deco_out;
logic [8:0] player2_pos_deco_out;
//logic player1_enable;
//logic player2_enable;					
logic illegal_move;
logic win_signal;
logic draw_signal;

position_register positions_register(clock, reset, assign_pulse, start_pulse, player1_pos_deco_out, player2_pos_deco_out, illegal_move, pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8, pos9);

winner_detector win_detector(pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8, pos9, win_signal, winner);

position_decoder player1_pos_deco(player1_pos, player1_turn, player1_pos_deco_out);
position_decoder player2_pos_deco(player2_pos, player2_turn, player2_pos_deco_out);

illegal_move_checker illegal_detector(pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8, pos9, player1_pos_deco_out, player2_pos_deco_out, illegal_move);

draw_detector draw_detect(pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8, pos9, draw_signal);

game_state_machine ttt_state_machine(clock, reset, assign_pulse, start_pulse, player1, player2, illegal_move, draw_signal, win_signal, player1_turn, player2_turn);
 
endmodule
					
									
						