#  Microcontrolador 
RISC-V FPGA System – PicoRV32 + UART

Este proyecto implementa un sistema embebido basado en un núcleo RISC-V sobre una FPGA Nexys 4 DDR. El diseño integra memoria de programa (ROM), memoria de datos (RAM) y periféricos mapeados en memoria, incluyendo un módulo de comunicación UART.

## Arquitectura del sistema

El sistema está compuesto por los siguientes módulos principales:

- PicoRV32 CPU  
  Núcleo RISC-V encargado de ejecutar el programa y coordinar el acceso a memoria y periféricos.  
  Repositorio: https://github.com/YosysHQ/picorv32

- ROM (Block Memory Generator)  
  Memoria de programa inicializada mediante archivo `.coe`, donde se almacenan las instrucciones.

- RAM (Block Memory Generator)  
  Memoria de datos utilizada para almacenamiento temporal durante la ejecución.

- UART  
  Módulo de comunicación serial configurado a 9600 baudios.  
  Basado en:  
  https://github.com/Oscar-Electronics/Taller_dise-o_digital/tree/main/Laboratorio%201/problema%203.4/UART%20usada  

  Componentes internos:
  - uart_tx
  - uart_rx
  - fifo_tx
  - fifo_rx

- Periféricos
- Botón N17 (entrada)
- LEDs (salida)
- top_microprocesador  
  Módulo superior encargado de la integración del sistema, decodificación de direcciones y control de la interfaz de memoria.

---

## Diagrama del sistema

<img width="1536" height="1024" alt="Microprocesador" src="https://github.com/user-attachments/assets/f09c2d86-d8f6-4ece-b68a-5f97c7cfd21b" />


---

## Mapa de memoria

| Dirección           | Dispositivo        | Descripción                  |
|--------------------|------------------|------------------------------|
| 0x0000_0000–07FC   | ROM              | Memoria de programa          |
| 0x0000_2000        | Botón N17        | Lectura de entrada           |
| 0x0000_2004        | LEDs             | Escritura de salida          |
| 0x0000_2010        | UART Control     | Estado/control UART          |
| 0x0000_2018        | UART Data        | Transmisión/recepción UART   |
| 0x0004_0000 →      | RAM              | Memoria de datos             |

---

## Funcionamiento

Al iniciar el sistema, el procesador PicoRV32 comienza la ejecución del programa almacenado en la ROM.

La comunicación entre el procesador y los dispositivos se realiza mediante una interfaz de memoria basada en las señales:

- mem_valid  
- mem_addr  
- mem_wdata  
- mem_wstrb  
- mem_rdata  
- mem_ready  

El módulo top_microprocesador decodifica la dirección solicitada y selecciona el dispositivo correspondiente.

Para la comunicación serial:

- El procesador escribe datos en la dirección UART Data  
- El módulo uart_tx transmite los datos hacia la computadora  
- El módulo uart_rx permite la recepción de datos desde la computadora  
- Los buffers FIFO evitan pérdida de datos por diferencias de velocidad  

---

## Validación

El sistema fue verificado mediante:

- Simulación en Vivado  
- Implementación en hardware en la FPGA Nexys 4 DDR  
- Uso de Tera Term para observar la comunicación serial  

---

## Herramientas utilizadas

- Vivado Design Suite  
- FPGA Nexys 4 DDR (Artix-7)  
- Tera Term  
- Toolchain RISC-V  

---

## Estructura del proyecto

- `src/`
  - `top/` → Integración del sistema
  - `riscv/` → CPU PicoRV32
  - `uart/` → Comunicación serial (FIFO + TX/RX)
- `program_led.coe` → ROM inicializada
- `led_only.c` → Código fuente
- `led_only.elf` → Ejecutable RISC-V
- `link.ld` → Configuración de memoria

---

## Ejecución

1. Abrir el proyecto en Vivado  
2. Ejecutar síntesis e implementación  
3. Generar el bitstream  
4. Programar la FPGA  
5. Configurar Tera Term:
   - Baud rate: 9600  
   - Puerto serial correspondiente  
6. Ejecutar el sistema y observar la salida UART  

---

## Notas

El sistema utiliza un esquema de memoria mapeada que permite integrar memorias y periféricos bajo una misma interfaz. Esto simplifica el diseño y facilita la expansión del sistema con nuevos dispositivos.
