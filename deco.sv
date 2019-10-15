module deco (input [2:0] color,	
             output logic [7:0] Red, Green, Blue);

// 0 - Fondo
// 1 - 0x000000
// 2 - 0xffffff
// 3 - 0XFF1551
// 4 - 0xbf8718
// 5 - 0x5eff00
// 6 - 0x008fff
// 7 - 0x02006b				 
				 
				 
always_comb
	case (color)
	3'd0: {Red, Green, Blue} = 24'hAAAAAA;
	3'd1: {Red, Green, Blue} = 24'h000000;
	3'd2: {Red, Green, Blue} = 24'hffffff;
	3'd3: {Red, Green, Blue} = 24'hFF1551;
	3'd4: {Red, Green, Blue} = 24'hbf8718;
	3'd5: {Red, Green, Blue} = 24'h5eff00;
	3'd6: {Red, Green, Blue} = 24'h008fff;
	3'd7: {Red, Green, Blue} = 24'h02006b;
	endcase
endmodule
