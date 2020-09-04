//
// Test bench for DLATCH module
//

module SRLATCH_tb;
	reg set, reset;
	wire q, qbar;
	
	SRLATCH dut( .Q(q), .S(set), .R(reset));

initial 
	begin
	set = 0; reset = 0;
	#5 set = 1; reset = 1;
	#10 set = 1; reset = 0;
	#15 set = 0; reset = 1;
	#20 set = 0; reset = 0; 
	#10 $finish;
end //initial

initial 
	begin
	$monitor("simtime = %g, R = %b, S = %b, Q_value = %b",
		  $time, reset,	set, q);
end //initial

initial 
begin
	$display("\007"); //ring a bell)
	$dumpfile("SRLATCH.vcd");
	$dumpvars(0, dut);
end


endmodule
