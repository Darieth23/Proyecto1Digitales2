#Makefile para ejecutar yosys, gtkwave, cambiarle el nombre del modulo
#al archivo alarma_desc_conductual_SED y mostrar la simulacion de probador.v
########################################################################
#Para ejecutar el make, ir a la carpeta donde se encuentra el archivo y
#en la terminal, escribir make
#Si desea ejecutar solo un target, escriba en la terminal make + target
########################################################################
all: verilog yosys gtkwave

verilog:
	iverilog -o prueba Bancocirculacion.v
	vvp prueba

yosys:
	yosys yosys.ys

gtkwave:
	gtkwave circulacion.vcd
