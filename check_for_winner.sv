module check_for_winner(input logic [1:0] pos0, pos1, pos2, output logic winner, output logic [1:0] player);

logic [1:0] tmp0, tmp1, tmp2;
logic tmp3;

assign tmp0[1] = !(pos0[1]^pos1[1]);
assign tmp0[0] = !(pos0[0]^pos1[0]);
assign tmp1[1] = !(pos2[1]^pos1[1]);
assign tmp1[0] = !(pos2[0]^pos1[0]);
assign tmp2[1] = tmp0[1] & tmp1[1];
assign tmp2[0] = tmp0[0] & tmp1[1];
assign tmp3 = pos0[1] | pos0[0];

assign winner = tmp3 & tmp2[1] & tmp2[0];
assign player[1] = winner & pos0[1];
assign player[0] = winner & pos0[0]; 

endmodule
