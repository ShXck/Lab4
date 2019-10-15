module Mux2(input logic [3:0] en0, en1, input logic enabler, output logic [3:0] y);
	assign y = enabler ? en1 : en0;
endmodule
