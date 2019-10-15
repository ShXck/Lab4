module counter_range_xy(input logic [9:0] pixelx, pixely, output logic [9:0] posx, posy);

always @* begin
if(pixelx > 10'd96 && pixelx < 10'd345 && pixely > 10'd2 && pixely < 10'd177)
	begin
		 posx <= 10'd200;
		 posy <= 10'd75;
	end
	
else if(pixelx > 10'd345 && pixelx < 10'd585 && pixely > 10'd2 && pixely < 10'd177)
	begin
		 posx <= 10'd425;
		 posy <= 10'd75;
	end

else if((pixelx > 10'd585 && pixelx < 10'd778) && (pixely > 10'd2 && pixely < 10'd177))
	begin 
		 posx <= 10'd650;
		 posy <= 10'd75;
	end
	
else if((pixelx > 10'd96 && pixelx < 10'd345) && (pixely > 10'd177 && pixely < 10'd348))
	begin
		 posx <= 10'd200;
		 posy <= 10'd230;
	end
	
else if((pixelx > 10'd345 && pixelx < 10'd585) && (pixely > 10'd177 && pixely < 10'd348))
	begin
		 posx <= 10'd425;
		 posy <= 10'd230;
	end

else if((pixelx > 10'd585 && pixelx < 10'd778) && (pixely > 10'd177 && pixely < 10'd348))
	begin 
		 posx <= 10'd650;
		 posy <= 10'd230;
	end
	
else if((pixelx > 10'd96 && pixelx < 10'd345) && (pixely > 10'd348 && pixely < 10'd515))
	begin
		 posx <= 10'd200;
		 posy <= 10'd400;
	end
	
else if((pixelx > 10'd345 && pixelx < 10'd585) && (pixely > 10'd348 && pixely < 10'd515))
	begin
		 posx <= 10'd425;
		 posy <= 10'd400;
	end

else if((pixelx > 10'd585 && pixelx < 10'd778) && (pixely > 10'd348 && pixely < 10'd515))
	begin 
		 posx <= 10'd650;
		 posy <= 10'd400;
	end
end
		
endmodule
