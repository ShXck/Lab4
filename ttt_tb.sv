module ttt_tb();

 // Inputs
 logic clock;
 logic reset;
 logic player1_enable;
 logic player2_enable;
 logic [3:0] player1_position;
 logic [3:0] player2_position;

 // Outputs
 logic [1:0] pos1;
 logic [1:0] pos2;
 logic [1:0] pos3;
 logic [1:0] pos4;
 logic [1:0] pos5;
 logic [1:0] pos6;
 logic [1:0] pos7;
 logic [1:0] pos8;
 logic [1:0] pos9;
 logic [1:0] who;

 // Instantiate the Unit Under Test (UUT)
 ttt_main uut (
  clock, 
  reset, 
  player1_enable, 
  player2_enable, 
  player1_position, 
  player2_position, 
  pos1, 
  pos2, 
  pos3, 
  pos4, 
  pos5, 
  pos6, 
  pos7, 
  pos8, 
  pos9, 
  who
 );
 // clock
 initial begin
 clock = 0;
for(int i = 0; i < 250; i++) #5 clock = ~clock;
	end 

initial begin
  // Initialize Inputs
  player1_enable = 0;
  reset = 1;
  player1_position = 0;
  player2_position = 0;
  player2_enable = 0;
  #100;
  reset = 0;
  #100;
  player1_enable = 1;
  player2_enable = 0;
  player1_position = 4;
  player2_position = 0;
  #50;
  player2_enable = 1;
  player1_enable = 0;
  #100;
  reset = 0;
  player1_enable = 1;
  player2_enable = 0;
  player1_position = 8;
  player2_position = 1;
  #50;
  player2_enable = 1;
  player1_enable = 0;  
  #100;
  reset = 0;
  player1_enable = 1;
  player2_enable = 0;
  player1_position = 0;
  player2_position = 2;
  #50;
  player2_enable = 1;
  player1_enable = 0; 
  #50
  player2_enable = 0;
  player1_enable = 0;   
  end
endmodule
