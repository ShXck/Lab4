module pos_to_sprite(input logic pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8, pos9, output logic sp1, sp2);

assign sp1 = (pos1 == 2'b01 || pos2 == 2'b01|| pos3 == 2'b01 || pos4 == 2'b01 || pos5 == 2'b01 || pos6 == 2'b01 || pos7 == 2'b01 || pos8 == 2'b01 || pos9 == 2'b01);

assign sp2 = (pos1 == 2'b10 || pos2 == 2'b10|| pos3 == 2'b10 || pos4 == 2'b10 || pos5 == 2'b10 || pos6 == 2'b10 || pos7 == 2'b10 || pos8 == 2'b10 || pos9 == 2'b10);

endmodule
