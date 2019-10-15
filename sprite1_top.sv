module sprite1_top(input clk, input [9:0] posx,
						posy, pixelx, pixely,
						output [7:0] Red, Green, Blue,
						output visible);
//ROM
logic [11:0] address;
logic [2:0] color;

rom_sprite  ROM (address, clk, color);	
//DECO
deco DECO (color, Red, Green, Blue);
logic xm63, ym63;
//ADDRESS GENERATION
addressGen ADDRESSS(pixelx, pixely,
            posx, posy, xm63, ym63, address);	
//VISIBLE LOGIC			
visibleLogic VIS (xm63, ym63, color, visible);						
endmodule
