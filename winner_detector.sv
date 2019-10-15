module winner_detector(input logic [1:0] pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9, output logic winner, output logic [1:0] player);
	logic win1,win2,win3,win4,win5,win6,win7,win8;
	logic [1:0] player1,player2,player3,player4,player5,player6,player7,player8;
	check_for_winner u1(pos1,pos2,pos3,win1,player1);// (1,2,3);
	check_for_winner u2(pos4,pos5,pos6,win2,player2);// (4,5,6);
	check_for_winner u3(pos7,pos8,pos9,win3,player3);// (7,8,9);
	check_for_winner u4(pos1,pos4,pos7,win4,player4);// (1,4,7);
	check_for_winner u5(pos2,pos5,pos8,win5,player5);// (2,5,8);
	check_for_winner u6(pos3,pos6,pos9,win6,player6);// (3,6,9);
	check_for_winner u7(pos1,pos5,pos9,win7,player7);// (1,5,9);
	check_for_winner u8(pos3,pos5,pos6,win8,player8);// (3,5,7);
	assign winner = (((((((win1 | win2) | win3) | win4) | win5) | win6) | win7) | win8);
	assign player = (((((((player1 | player2) | player3) | player4) | player5) | player6) | player7) | player8);
endmodule 