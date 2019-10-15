module pos_to_pixely(input logic [3:0] player_pos, input logic player_enable, output logic [9:0] pixy);

always_comb
	case(player_enable)
	0: pixy = 10'b0;
	1: begin
			case(player_pos)
				0 :  pixy = 10'd75;
				1 :  pixy = 10'd75; 
				2 :  pixy = 10'd75; 
				
				3 :  pixy = 10'd230;
				4 :  pixy = 10'd230; 
				5 :  pixy = 10'd230; 
				
				6 :  pixy = 10'd400; 
				7 :  pixy = 10'd400; 	
				8 :  pixy = 10'd400; 
				
				default: pixy = 10'd75;
			endcase
		end
	default: pixy = 10'b0;
	endcase
endmodule

// Pos1: 200x 75y	    Pos2: 425x 75y    Pos3: 650x 75y 
// Pos4: 200x 75y	    Pos5: 425x 75y    Pos6: 650x 75y 
// Pos7: 200x 75y	    Pos8: 425x 75y    Pos3: 650x 75y 