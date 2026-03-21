Objetivo: módulo PWM con 16 niveles de intensidad controlado por 4 switches
Periodo de 1ms, carga: LED16G
logica usada ciclo de trabajo:

<img width="708" height="364" alt="image" src="https://github.com/user-attachments/assets/3ce7b8d1-b478-44af-b7cf-4ac2807545b2" />

Hardware: Switches R15, M13, L16, J15 (de MSB a LSB). 
LED16G
Archivos: Ejer_3_3.v y Ejer_3_3tb.sv
Link al video de verificación: https://youtube.com/shorts/9Uha4O5wPcw?si=X9-zHAuQW8thO4DC 

Guia vivado:
1. Agregar `Ejer_3_3.v` como Design Source
2. Agregar `Ejer_3_3tb.sv` como Simulation Source
3. Agregar `MasterFile.xdc` como Constraints
4. Correr simulación y luego generar bitstream
