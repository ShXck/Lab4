module sprite_vga(input logic clock, input logic [9:0] posx, posy, output logic s);

// VGA
logic Hsynq, Vsynq, blank, nsync, clk_25M;
logic [7:0] Red, Green, Blue;
logic [15:0] Hcounter, Vcounter;

//Sprite
//logic [9:0] posx, posy, pixelx, pixely;
logic [23:0] RGB;
logic visible;

vga_controller vga(clock, Hsynq, Vsynq, blank, nsync, clk_25M, Red, Green, Blue, Hcounter, Vcounter);

assign {Red, Green, Blue} = RGB;

sprite_top sprite(clock, posx, posy, Hcounter[9:0], Vcounter[9:0], RGB, visible);

endmodule
