module illegal_move_checker(input logic [1:0] pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8, pos9,
													input logic[8:0] player1_enabler, player2_enabler, output logic illegal);

logic tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7, tmp8, tmp9;
logic tmp11,tmp12,tmp13,tmp14,tmp15,tmp16,tmp17,tmp18,tmp19;
logic tmp21,tmp22;

// player1 								
assign tmp1 = (pos1[1] | pos1[0]) & player1_enabler[0]; 
assign tmp2 = (pos2[1] | pos2[0]) & player1_enabler[1];
assign tmp3 = (pos3[1] | pos3[0]) & player1_enabler[2];
assign tmp4 = (pos4[1] | pos4[0]) & player1_enabler[3];
assign tmp5 = (pos5[1] | pos5[0]) & player1_enabler[4];
assign tmp6 = (pos6[1] | pos6[0]) & player1_enabler[5];
assign tmp7 = (pos7[1] | pos7[0]) & player1_enabler[6];
assign tmp8 = (pos8[1] | pos8[0]) & player1_enabler[7];
assign tmp9 = (pos9[1] | pos9[0]) & player1_enabler[8];
// player2
assign tmp11 = (pos1[1] | pos1[0]) & player2_enabler[0];
assign tmp12 = (pos2[1] | pos2[0]) & player2_enabler[1];
assign tmp13 = (pos3[1] | pos3[0]) & player2_enabler[2];
assign tmp14 = (pos4[1] | pos4[0]) & player2_enabler[3];
assign tmp15 = (pos5[1] | pos5[0]) & player2_enabler[4];
assign tmp16 = (pos6[1] | pos6[0]) & player2_enabler[5];
assign tmp17 = (pos7[1] | pos7[0]) & player2_enabler[6];
assign tmp18 = (pos8[1] | pos8[0]) & player2_enabler[7];
assign tmp19 = (pos9[1] | pos9[0]) & player2_enabler[8];
// intermediate signals 
assign tmp21 =((((((((tmp1 | tmp2) | tmp3) | tmp4) | tmp5) | tmp6) | tmp7) | tmp8) | tmp9);
assign tmp22 =((((((((tmp11 | tmp12) | tmp13) | tmp14) | tmp15) | tmp16) | tmp17) | tmp18) | tmp19);
// output illegal move 
assign illegal = tmp21 | tmp22 ;
endmodule  										