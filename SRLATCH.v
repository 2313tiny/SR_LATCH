
// SR-latch module(circuit) 
//
module SRLATCH(Q, S, R); //set , reset
	
	//port declaration
	output Q, Qbar; //  Q, or Q_bar
	input S, R;

	//instantiate lower-level modules	
	nand NAND_1(Q, S, Qbar );
	nand NAND_2(Qbar, R, Q);	

endmodule //SRLATCH

