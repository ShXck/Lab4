module pos_to_pixelx(input logic [3:0] player_pos, input logic player_enable, output logic [9:0] pixx);

always_comb
	case(player_enable)
		0: pixx = 10'b0;
		1: begin
				case(player_pos)
					0 :  pixx = 10'd200;
					1 :  pixx = 10'd425; 
					2 :  pixx = 10'd650; 
					
					3 :  pixx = 10'd200;
					4 :  pixx = 10'd425; 
					5 :  pixx = 10'd650; 
					
					6 :  pixx = 10'd200; 
					7 :  pixx = 10'd425; 	
					8 :  pixx = 10'd650; 
					
					default: pixx = 10'd200;
				endcase
			end
		default: pixx = 10'b0;
	endcase
endmodule


// Pos1: 200x 75y	    Pos2: 425x 75y    Pos3: 650x 75y 
// Pos4: 200x 300y	    Pos5: 425x 300y    Pos6: 650x 300y 
// Pos7: 200x 499y	    Pos8: 425x 525y    Pos3: 650x 525y 

