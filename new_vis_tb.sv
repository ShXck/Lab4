module new_vis_tb();

logic sprite_visible; 
logic[1:0] player, pos; 
logic [9:0] pixx, pixy, posx, posy;
logic new_visible;

new_visible DUT(sprite_visible, player, pos, pixx, pixy, posx, posy, new_visible);

initial begin

#50 sprite_visible = 1'b0; player = 2'b00; pos = 2'b00; pixx = 10'b0; pixy = 10'b0; posx = 10'b0; posy = 10'b0;
#50 sprite_visible = 1'b1; player = 2'b01; pos = 2'b01; pixx = 10'd200; pixy = 10'd75; posx = 10'd270; posy = 10'd100;

end

endmodule


