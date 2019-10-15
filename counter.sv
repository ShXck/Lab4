module counter(input logic clock, reset, output logic[3:0] count);

logic [3:0] counter;

always @(posedge clock or posedge reset)
	begin
		if(reset) counter <= 4'b0;
		else if(counter == 4'b1001) counter <= 4'b0;
		else counter <= counter + 4'b1;
	end
	assign count = counter;
	
endmodule
