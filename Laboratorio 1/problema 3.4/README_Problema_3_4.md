Objetivo: Implementación de una interfaz UART a 9600 baudios en la FPGA Nexys 4 DDR. Al presionar un botón envía "Hola mundo" a una PC, y muestra en LEDs los datos ASCII recibidos desde el teclado.
Archivos:`Top_Todo.v`,`constraints.xdc` ,`/UART usada` — Archivos de la UART usada (licencia libre), `/test`(test bench de la funcionalidad de la fpga)

Diagrama de bloques y Maquina de estado(hello world):

<img width="975" height="517" alt="image" src="https://github.com/user-attachments/assets/88fac211-4132-42d8-9e19-ec9a73fa60a0" />


<img width="975" height="603" alt="image" src="https://github.com/user-attachments/assets/59d45fbd-7c1b-437f-913e-85a4e2c34688" />

Link verificación:

https://www.youtube.com/shorts/exAvfGnB9Y8

guia vivado:<br>
1.Agregar todos los archivos de `/UART usada` como Design Sources, todos menos los que estan en la carpeta `/test` <br>
2. Agregar `Top_Todo.v` como módulo top<br>
3. Agregar constraints y generar bitstream<br>
4. Conectar por puerto serial con Tera Term a 9600 baudios<br>
5.Probarlo
