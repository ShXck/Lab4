module testbench_top();

logic clk;
logic Hsynq;
logic Vsynq;
logic blank;
logic [3:0] Red;
logic [3:0] Green;
logic [3:0] Blue;

top UUT(clk, Hsynq, Vsynq, blank, Red, Green, Blue);

initial begin
	clk = 1'b0;	
			
	end
	
	always
		#1 clk= ~clk;	
endmodule

