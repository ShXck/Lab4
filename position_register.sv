module position_register(
		input clock,
				reset, assign_pulse, start_pulse, input logic[8:0]	player1_enable, player2_enable,
		input logic illegal_move,
		output logic [1:0] pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9);
	
	// Primer posición
	always @(posedge clock or posedge reset)
		begin 
			if(reset)
				pos1 <= 2'b00;
			else 
				begin
					if(illegal_move == 1'b1) pos1 <= pos1;
					else if(player1_enable[0] == 1'b1 && ~assign_pulse == 1'b1 && start_pulse) pos1 <= 2'b01;
					else if(player2_enable[0] == 1'b1 && ~assign_pulse == 1'b1 && start_pulse) pos1 <= 2'b10;
					else pos1 <= pos1;
				end
		end
		
	// Segunda posición
	always @(posedge clock or posedge reset)
		begin 
			if(reset)
				pos2 <= 2'b00;
			else 
				begin
					if(illegal_move == 1'b1) pos2 <= pos2;
					else if(player1_enable[1] == 1'b1 && ~assign_pulse == 1'b1 && start_pulse) pos2 <= 2'b01;
					else if(player2_enable[1] == 1'b1 && ~assign_pulse == 1'b1 && start_pulse) pos2 <= 2'b10;
					else pos2 <= pos2;
				end
		end
		
	// Tercera posición
	always @(posedge clock or posedge reset)
		begin 
			if(reset)
				pos3 <= 2'b00;
			else 
				begin
					if(illegal_move == 1'b1) pos3 <= pos3;
					else if(player1_enable[2] == 1'b1 && ~assign_pulse == 1'b1 && start_pulse) pos3 <= 2'b01;
					else if(player2_enable[2] == 1'b1 && ~assign_pulse == 1'b1 && start_pulse) pos3 <= 2'b10;
					else pos3 <= pos3;
				end
		end
		
	// Cuarta posición
	always @(posedge clock or posedge reset)
		begin 
			if(reset)
				pos4 <= 2'b00;
			else 
				begin
					if(illegal_move == 1'b1) pos4 <= pos4;
					else if(player1_enable[3] == 1'b1 && ~assign_pulse == 1'b1 && start_pulse) pos4 <= 2'b01;
					else if(player2_enable[3] == 1'b1 && ~assign_pulse == 1'b1 && start_pulse) pos4 <= 2'b10;
					else pos4 <= pos4;
				end
		end
		
	// Quinta posición
	always @(posedge clock or posedge reset)
		begin 
			if(reset)
				pos5 <= 2'b00;
			else 
				begin
					if(illegal_move == 1'b1) pos5 <= pos5;
					else if(player1_enable[4] == 1'b1 && ~assign_pulse == 1'b1 && start_pulse) pos5 <= 2'b01;
					else if(player2_enable[4] == 1'b1 && ~assign_pulse == 1'b1 && start_pulse) pos5 <= 2'b10;
					else pos5 <= pos5;
				end
		end

	// Sexta posición
	always @(posedge clock or posedge reset)
		begin 
			if(reset)
				pos6 <= 2'b00;
			else 
				begin
					if(illegal_move == 1'b1) pos6 <= pos6;
					else if(player1_enable[5] == 1'b1 && ~assign_pulse == 1'b1 && start_pulse) pos6 <= 2'b01;
					else if(player2_enable[5] == 1'b1 && ~assign_pulse == 1'b1 && start_pulse) pos6 <= 2'b10;
					else pos6 <= pos6;
				end
		end
		
	// Sétima posición
	always @(posedge clock or posedge reset)
		begin 
			if(reset)
				pos7 <= 2'b00;
			else 
				begin
					if(illegal_move == 1'b1) pos7 <= pos7;
					else if(player1_enable[6] == 1'b1 && ~assign_pulse == 1'b1 && start_pulse) pos7 <= 2'b01;
					else if(player2_enable[6] == 1'b1 && ~assign_pulse == 1'b1 && start_pulse) pos7 <= 2'b10;
					else pos7 <= pos7;
				end
		end
		
	// Octava posición
	always @(posedge clock or posedge reset)
		begin 
			if(reset)
				pos8 <= 2'b00;
			else 
				begin
					if(illegal_move == 1'b1) pos8 <= pos8;
					else if(player1_enable[7] == 1'b1 && ~assign_pulse == 1'b1 && start_pulse) pos8 <= 2'b01;
					else if(player2_enable[7] == 1'b1 && ~assign_pulse == 1'b1 && start_pulse) pos8 <= 2'b10;
					else pos8 <= pos8;
				end
		end
		
	// Novena posición
	always @(posedge clock or posedge reset)
		begin 
			if(reset)
				pos9 <= 2'b00;
			else 
				begin
					if(illegal_move == 1'b1) pos9 <= pos9;
					else if(player1_enable[8] == 1'b1 && ~assign_pulse == 1'b1 && start_pulse) pos9 <= 2'b01;
					else if(player2_enable[8] == 1'b1 && ~assign_pulse == 1'b1 && start_pulse) pos9 <= 2'b10;
					else pos9 <= pos9;
				end
		end
		
endmodule
