module draw_detector_tb();

logic[1:0] pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8, pos9; 
logic draw;

draw_detector DUT(pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8, pos9, draw);

initial begin

// 01 X
// 10 O

#200 pos1 = 2'b00; pos2 = 2'b00; pos3 = 2'b00; pos4 = 2'b00; pos5= 2'b00; pos6 = 2'b00; pos7 = 2'b00;pos8= 2'b00; pos9 = 2'b00;
#200 pos1 = 2'b10;
#200 pos2 = 2'b10;
#200 pos3 = 2'b01;
#200 pos4 = 2'b01;
#200 pos5 = 2'b01;
#200 pos6 = 2'b10;
#200 pos7 = 2'b10;
#200 pos8 = 2'b01;
#200 pos9 = 2'b01;

end

endmodule
