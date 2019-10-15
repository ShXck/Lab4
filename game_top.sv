module game_top(input logic clock, reset, player1, player2, start_pulse, move_pulse, assign_pulse, input logic[3:0] mux_ctrl, output logic Hsynq, Vsynq, blank, nsync, clk_25M, output logic [7:0] Red, Green, Blue, output logic [6:0] display_pos);

//// VGA
//logic [9:0] Hcounter, Vcounter, posx1, posy1, posx2, posy2, pixelx, pixely;
//
////RGBs
//	// RGB lineas
//logic [7:0] Red_m, Green_m, Blue_m; 
//	// RGB Sprite1
//logic [7:0] Red_s, Green_s, Blue_s; 
//	// RGB Sprite2
//logic [7:0] Red_ss, Green_ss, Blue_ss;
//
//logic [23:0] RGB_screen, RGB_sprite1, RGB_sprite2;
//logic [1:0] rgb_mux_control;
//
////Visibles
//logic visible1, visible2;
//
////State machine
//logic winner; 
//logic [3:0] player1_pos = 4'b0001; 
//logic [3:0] player2_pos = 4'b0000;
//logic [3:0] player_pos_turn = 4'b0000; 
//logic [1:0] pos2, pos1, pos3, pos4, pos5, pos6, pos7, pos8, pos9;
//
////Counter
//logic[3:0] counter_out;
//
//vga_controller vga(clock, Hsynq, Vsynq, blank, nsync, clk_25M, Hcounter, Vcounter);
//
//counter counter_mux(clock, reset, counter_out);
//
//position_adder pos_adder(player1_pos, player2_pos, move_pulse, player1, player2, player1_pos, player2_pos);
//
//Mux2 mux2(player1_pos, player2_pos, player2, player_pos_turn);
//
//sevenseg display_deco(player_pos_turn, display_pos);
//
//pos_to_pixelx pixelx_gen1(player_pos_turn, player1, posx1);
//pos_to_pixely pixely_gen1(player_pos_turn, player1, posy1);
//
//pos_to_pixelx pixelx_gen2(player_pos_turn, player2, posx2);
//pos_to_pixely pixely_gen2(player_pos_turn, player2, posy2);
//
//ttt_main game_top(clock, reset, player1, player2, assign_pulse, player1_pos, player2_pos, pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8, pos9, winner, player1_turn, player2_turn);
//
//sprite1_top  sprite_player1(clock, posx1, posy1, Hcounter, Vcounter, Red_s, Green_s, Blue_s, visible1);
//
//sprite2_top  sprite_player2(clock, posx2, posy2, Hcounter, Vcounter, Red_ss, Green_ss, Blue_ss, visible2);
//
//screen VGA_screen (Hcounter, Vcounter, Red_m, Green_m, Blue_m);
//
//assign {Red_m, Green_m, Blue_m} = RGB_screen;
//assign {Red_s, Green_s, Blue_s} = RGB_sprite1;
//assign {Red_ss, Green_ss, Blue_ss} = RGB_sprite2;
//
//assign {visible2, visible1} = rgb_mux_control;
//
//mux4 mux_4(RGB_screen, RGB_sprite1, RGB_sprite2, 23'b0, rgb_mux_control, RGB);
//
//assign {Red, Green, Blue} = RGB;


// VGA
logic [9:0] Hcounter, Vcounter, posx1, posy1, posx2, posy2, pixelx, pixely;

//RGBs
logic [7:0] Red_m, Green_m, Blue_m, Red_s, Green_s, Blue_s, Red_ss, Green_ss, Blue_ss;
logic [23:0] RGB_screen, RGB_sprite1, RGB_sprite2, RGB;
logic [1:0] rgb_mux_control;
logic visible1, visible2;

//State machine
//logic player1 = 1'b0;
//logic player2 = 1'b1;
logic winner; 
logic [3:0] player1_pos = 4'b0001; 
logic [3:0] player2_pos = 4'b0000;
logic [3:0] player_pos_turn = 4'b0000; 
logic [1:0] pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8, pos9;

assign pos1 = 2'b01;
assign pos2 = 2'b10;

vga_controller vga(clock, Hsynq, Vsynq, blank, nsync, clk_25M, Hcounter, Vcounter);

position_adder pos_adder(player1_pos, player2_pos, move_pulse, player1, player2, player1_pos, player2_pos);

Mux2 mux2(player1_pos, player2_pos, player2, player_pos_turn);

sevenseg display_deco(player_pos_turn, display_pos);

//pos_to_pixelx pixelx_gen1(player_pos_turn, player1, posx1);
//pos_to_pixely pixely_gen1(player_pos_turn, player1, posy1);
//
//pos_to_pixelx pixelx_gen2(player_pos_turn, player2, posx2);
//pos_to_pixely pixely_gen2(player_pos_turn, player2, posy2);

counter_range_xy counter_xy(Hcounter, Vcounter, posx1, posy1);


//ttt_main game_top(clock, reset, player1, player2, assign_pulse, player1_pos, player2_pos, pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8, pos9, winner);

//sprite1_top  sprite_player1(clock, posx1, posy1, Hcounter, Vcounter, Red_s, Green_s, Blue_s, visible1);

//sprite2_top  sprite_player2(clock, posx2, posy2, Hcounter, Vcounter, Red_ss, Green_ss, Blue_ss, visible2);

logic sp1, sp2, print1, print2;

pos_to_sprite pos_sprite(pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8, pos9, sp1, sp2);

sprite1_top  sprite_player1(clock, posx1, posy1, Hcounter, Vcounter, Red_s, Green_s, Blue_s, visible1);

sprite2_top  sprite_player2(clock, posx1, posy1, Hcounter, Vcounter, Red_ss, Green_ss, Blue_ss, visible2);

sp_and_vis spvis1(visible1, sp1, print1);
sp_and_vis spvis2(visible2, sp2, print2);

screen VGA_screen (Hcounter, Vcounter, Red_m, Green_m, Blue_m);

assign {Red_m, Green_m, Blue_m} = RGB_screen;
assign {Red_s, Green_s, Blue_s} = RGB_sprite1;
assign {Red_ss, Green_ss, Blue_ss} = RGB_sprite2;

//assign {visible2, visible1} = rgb_mux_control;
assign {print2, print1} = rgb_mux_control;

mux4 mux_4(RGB_screen, RGB_sprite1, RGB_sprite2, 23'b0, rgb_mux_control, RGB);

assign {Red, Green, Blue} = RGB;

endmodule
