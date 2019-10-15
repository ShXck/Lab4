module vga_controller(input logic clk , output logic Hsynq, Vsynq, blank, nsync, clk_25M, output logic [9:0] Hcounter, Vcounter);

logic enable_V_Counter;
logic [9:0] H_Counter_Value;
logic [9:0] V_Counter_Value;

assign nsync = 1;

// Clock								50     25
	clock_divider_ VGA_Clock (clk, clk_25M);

// Counters
	horizontal_counter VGA_Horiz (clk_25M, enable_V_Counter, H_Counter_Value);
	vertical_counter VGA_Verti (clk_25M, enable_V_Counter, V_Counter_Value);

// synchronization
	synq VGA_Synq (H_Counter_Value, V_Counter_Value, Hsynq, Vsynq, blank); 
	
	assign Hcounter = H_Counter_Value;
	assign Vcounter = V_Counter_Value;

// Colors-Screen		No funcional 100% porque depende de la imagen
	//screen VGA_screen (H_Counter_Value, V_Counter_Value, Red, Green, Blue);
	
// Lines
//	lines	VGA_lines ( H_Counter_Value, V_Counter_Value, Red, Green, Blue, vlines);
	
	
	// Todo lo secuencial con reset
endmodule
