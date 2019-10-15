module sp_and_vis(input logic visible, sp, output logic print_sprite);

assign print_sprite = visible && sp;

endmodule
