module counter_range_xy_p2(input logic clock, input logic [9:0] pixelx, pixely,
								input logic [1:0] pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8, pos9,
								output logic [9:0] posx, posy);

always @(negedge clock) begin
if(pixelx > 10'd96 && pixelx < 10'd345 && pixely > 10'd2 && pixely < 10'd177 && pos1 == 2'b10)
	begin
		 posx <= 10'd200;
		 posy <= 10'd75;
	end
	
else if(pixelx > 10'd345 && pixelx < 10'd585 && pixely > 10'd2 && pixely < 10'd177 && pos2 == 2'b10)
	begin
		 posx <= 10'd425;
		 posy <= 10'd75;
	end

else if((pixelx > 10'd585 && pixelx < 10'd778) && (pixely > 10'd2 && pixely < 10'd177) && pos3 == 2'b10)
	begin 
		 posx <= 10'd650;
		 posy <= 10'd75;
	end
	
else if((pixelx > 10'd96 && pixelx < 10'd345) && (pixely > 10'd177 && pixely < 10'd348) && pos4 == 2'b10)
	begin
		 posx <= 10'd200;
		 posy <= 10'd230;
	end
	
else if((pixelx > 10'd345 && pixelx < 10'd585) && (pixely > 10'd177 && pixely < 10'd348) && pos5 == 2'b10)
	begin
		 posx <= 10'd425;
		 posy <= 10'd230;
	end

else if((pixelx > 10'd585 && pixelx < 10'd778) && (pixely > 10'd177 && pixely < 10'd348) && pos6 == 2'b10)
	begin 
		 posx <= 10'd650;
		 posy <= 10'd230;
	end
	
else if((pixelx > 10'd96 && pixelx < 10'd345) && (pixely > 10'd348 && pixely < 10'd515) && pos7 == 2'b10)
	begin
		 posx <= 10'd200;
		 posy <= 10'd400;
	end
	
else if((pixelx > 10'd345 && pixelx < 10'd585) && (pixely > 10'd348 && pixely < 10'd515) && pos8 == 2'b10)
	begin
		 posx <= 10'd425;
		 posy <= 10'd400;
	end

else if((pixelx > 10'd585 && pixelx < 10'd778) && (pixely > 10'd348 && pixely < 10'd515) && pos9 == 2'b10)
	begin 
		 posx <= 10'd650;
		 posy <= 10'd400;
	end
end
		
endmodule
