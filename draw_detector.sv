module draw_detector(input logic[1:0] pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8, pos9, output logic draw);

logic tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7, tmp8, tmp9;

assign tmp1 = pos1[1] | pos1[0];
assign tmp2 = pos2[1] | pos2[0];
assign tmp3 = pos3[1] | pos3[0];
assign tmp4 = pos4[1] | pos4[0];
assign tmp5 = pos5[1] | pos5[0];
assign tmp6 = pos6[1] | pos6[0];
assign tmp7 = pos7[1] | pos7[0];
assign tmp8 = pos8[1] | pos8[0];
assign tmp9 = pos9[1] | pos9[0];

assign draw = ((((((((tmp1 & tmp2) & tmp3) & tmp4) & tmp5) & tmp6) & tmp7) & tmp8) & tmp9);

endmodule
