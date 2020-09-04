
synthesis: comp run

comp: SRLATCH_tb.v SRLATCH.v
	@clear
	@iverilog SRLATCH.v SRLATCH_tb.v -o SRLATCH 
	@echo "[DONE]........COMPILE" 
run:
	@vvp SRLATCH
	@echo "[DONE]........RUN" 

gtk: SRLATCH.vcd
	@gtkwave	SRLATCH.vcd
	@echo "[DONE]........gtkwave\n" 
clean:
	rm SRLATCH *.vcd
