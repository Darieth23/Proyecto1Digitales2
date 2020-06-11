all: verilog yosys

verilog: 
	iverilog -o prueba BancoPruebas.v
	vvp prueba

yosys:
	yosys yosys.ys