module mux4(input logic [23:0] en0, en1, en2, en3, input logic [1:0] control, output logic [23:0] out);

assign out = control[1] ? (control[0] ? en3 : en2) : (control[0] ? en1 : en0);

endmodule
