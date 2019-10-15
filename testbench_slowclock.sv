module testbench_slowclock();

logic clk;
logic reset;
logic clk_1Hz;

slowClock UUT(clk, reset, clk_1Hz);

initial 
	begin
		clk = 1'b0;				
		reset = 1'b0;
	end
	
	always
		#1 clk= ~clk;	
		
endmodule
