module game_state_machine(input logic clock, reset, assign_pulse , start_pulse, player1_enable, player2_enable, illegal_move, draw, is_over, output logic player1_turn, player2_turn);

parameter IDLE = 2'b00;
parameter PLAYER1 = 2'b01;
parameter PLAYER2 = 2'b10;
parameter GAME_OVER = 2'b11;

logic [1:0] current_state, next_state;

always @(posedge clock or posedge reset)
	begin
		if(reset == 1'b1) current_state <= IDLE;
		else current_state <= next_state;		
	end

always_ff @(*)
	begin
		case(current_state)
			IDLE: begin
				if(reset == 1'b0 & player1_enable == 1'b1) next_state <= PLAYER1;
				else if(reset == 1'b0 & player2_enable == 1'b1) next_state <= PLAYER2;
				else 
					begin
					next_state <= IDLE;
					player1_turn <= 1'b0;
					player2_turn <= 1'b0;
					end
			end
			
			PLAYER1: begin
				player1_turn <= 1'b1;
				player2_turn <= 1'b0;
				if(is_over == 1'b1 || draw == 1'b1) next_state <= GAME_OVER;
				else if(illegal_move == 1'b0 && ~assign_pulse ) next_state <= PLAYER2;
				else next_state <= IDLE;
				end
				
			PLAYER2: begin
				player1_turn <= 1'b0;
				player2_turn <= 1'b1;
				if(is_over == 1'b1 || draw == 1'b1) next_state <= GAME_OVER;
				else if(illegal_move == 1'b0 && ~assign_pulse ) next_state <= PLAYER1;
				else next_state <= IDLE;
				end
				
			GAME_OVER: begin
				player1_turn <= 1'b0;
				player2_turn <= 1'b0;
				if(reset == 1'b1) next_state <= IDLE;
				else next_state <= GAME_OVER;
				end
			default: next_state <= IDLE;
		endcase
	end
endmodule
