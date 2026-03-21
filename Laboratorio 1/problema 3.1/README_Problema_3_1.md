Objetivo: módulo que convierte una entrada de 4 bits (switches) a su complemento a 2 mostrado en LEDs DE la FPGA

Hardware: FPGA Nexys 4 DDR, switches R15, M13, L16, J15 y LEDs N14, J13, K15, H17.

Archivos: ejercicio_3_1.v (módulo), tb_ejercicio_1.sv (testbench)

Link al video de verificación en FPGA: https://youtu.be/MkBTeuorBac 

Como usar en vivado:<br>

1-Agregar `ejercicio_3_1.v` como Design Source<br>
2. Agregar `tb_ejercicio_1.sv` como Simulation Source<br>
3. Agregar `MasterFile.xdc` como Constraints<br>
4. Correr simulación y luego generar bitstream<br>
