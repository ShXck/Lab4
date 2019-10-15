module position_decoder(input logic[3:0] in, input logic enable, output logic [8:0] out_en);
 logic[8:0] temp1;
 assign out_en = (enable == 1'b1) ? temp1 : 8'b0;
 always_ff@(*)
	 begin
		 case(in)
			 4'd0: temp1 <= 9'b000000001;
			 4'd1: temp1 <= 9'b000000010; 
			 4'd2: temp1 <= 9'b000000100;
			 4'd3: temp1 <= 9'b000001000;
			 4'd4: temp1 <= 9'b000010000;
			 4'd5: temp1 <= 9'b000100000;
			 4'd6: temp1 <= 9'b001000000;
			 4'd7: temp1 <= 9'b010000000;
			 4'd8: temp1 <= 9'b100000000;
			 default: temp1 <= 9'b1; 
	 endcase 
	end 
endmodule 