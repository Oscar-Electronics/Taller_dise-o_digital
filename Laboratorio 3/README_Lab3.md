# Microcontrolador RISC-V en FPGA

## PicoRV32 + UART + SPI ADXL362

Este proyecto implementa un sistema embebido basado en un núcleo **RISC-V PicoRV32** sobre una FPGA **Nexys 4 DDR**. El diseño integra memoria de programa, memoria de datos y periféricos mapeados en memoria, incluyendo **GPIO para LEDs**, **UART** para comunicación serial y un controlador **SPI** para la lectura del acelerómetro **ADXL362**.

---

## Arquitectura del sistema

El sistema está compuesto por los siguientes módulos principales:

* **PicoRV32 CPU**
  Núcleo RISC-V encargado de ejecutar el programa principal y coordinar el acceso a memoria y periféricos.
  Repositorio: https://github.com/YosysHQ/picorv32

* **ROM**
  Memoria de programa donde se almacenan las instrucciones ejecutadas por el procesador.

* **RAM**
  Memoria de datos utilizada para almacenamiento temporal durante la ejecución del programa.

* **AXI Bridge**
  Módulo encargado de adaptar la interfaz de memoria del procesador hacia periféricos tipo AXI-Lite, como GPIO y UART.

* **UART**
  Módulo de comunicación serial configurado a **9600 baudios**. Permite enviar los datos obtenidos hacia una computadora mediante Release beta 5.5.

  Componentes internos:

  * `uart_tx`
  * `uart_rx`
  * `fifo_tx`
  * `fifo_rx`

* **SPI ADXL362**
  Controlador SPI encargado de comunicarse con el acelerómetro **ADXL362**. Este módulo inicializa el sensor y permite leer los datos de aceleración en los ejes **X**, **Y** y **Z**.

* **Periféricos**

  * Botón N17, usado como entrada.
  * LEDs, usados como salida e indicadores de estado.
  * UART, usada para transmisión serial.
  * SPI, usado para adquisición de datos del acelerómetro.

* **top_microprocesador**
  Módulo superior encargado de integrar el procesador, memorias, periféricos, decodificación de direcciones y señales externas de la FPGA.

---

## Diagrama del sistema
<img width="953" height="715" alt="image" src="https://github.com/user-attachments/assets/e4262a46-2c22-4d1f-9ee1-085643db9244" />


---

## Mapa de memoria

| Dirección                   | Dispositivo  | Descripción                      |
| --------------------------- | ------------ | -------------------------------- |
| `0x0000_0000 – 0x0000_07FC` | ROM          | Memoria de programa              |
| `0x0000_2000`               | Botón N17    | Lectura de entrada               |
| `0x0000_2004`               | LEDs         | Escritura de salida              |
| `0x0000_2010`               | UART Control | Registro de control UART         |
| `0x0000_2018`               | UART Data    | Registro de datos UART           |
| `0x0000_201C`               | UART Status  | Estado de UART                   |
| `0x0000_2020`               | SPI Control  | Control e inicio de lectura SPI  |
| `0x0000_2028`               | SPI XY Data  | Lectura de datos X/Y del ADXL362 |
| `0x0000_202C`               | SPI Z Data   | Lectura de datos Z del ADXL362   |
| `0x0004_0000 – 0x0004_1FFC` | RAM          | Memoria de datos                 |

---

## Funcionamiento

Al iniciar el sistema, el procesador **PicoRV32** ejecuta el programa almacenado en la ROM. El programa configura el flujo principal del sistema y accede a los periféricos mediante direcciones mapeadas en memoria.

La comunicación entre el procesador y los dispositivos se realiza mediante la interfaz de memoria del PicoRV32:

* `mem_valid`
* `mem_addr`
* `mem_wdata`
* `mem_wstrb`
* `mem_rdata`
* `mem_ready`

El módulo `top_microprocesador` decodifica la dirección solicitada y selecciona si el acceso corresponde a ROM, RAM, GPIO, UART o SPI.

Para la lectura del acelerómetro:

1. El procesador escribe en el registro `SPI Control`.
2. El módulo SPI inicia la comunicación con el ADXL362.
3. Se leen los datos de aceleración de los ejes X, Y y Z.
4. El procesador obtiene los datos desde los registros `SPI XY Data` y `SPI Z Data`.
5. Los valores pueden enviarse por UART hacia la computadora y visualizarse en Release beta 5.5.

Los LEDs se utilizan como indicadores visuales del estado del sistema, por ejemplo, para mostrar inicialización, funcionamiento correcto o errores de comunicación.

---

## Validación

El sistema fue verificado mediante:

* Simulación en Vivado.
* Implementación en hardware sobre la FPGA Nexys 4 DDR.
* Lectura del acelerómetro ADXL362 mediante SPI.
* Comunicación serial mediante UART.
* Visualización de datos usando Release beta 5.5..

---

## Herramientas utilizadas

* Vivado Design Suite.
* FPGA Nexys 4 DDR.
* PicoRV32.
* Toolchain RISC-V.
* Release beta 5.5.
* Acelerómetro ADXL362.
* Juego conejo.

---

## Estructura del proyecto

* `top_microprocesador.v` → Integración general del sistema.
* `picorv32.v` → Núcleo RISC-V.
* `bridge.v` → Puente entre PicoRV32 y periféricos AXI-Lite.
* `axi_gpio_simple.v` → Control de LEDs.
* `axi_uart.v` → Periférico UART mapeado en memoria.
* `uart.sv` → Comunicación serial UART.
* `uart_tx.sv` → Transmisor UART.
* `uart_rx.sv` → Receptor UART.
* `fifo.sv`, `fifo_ctrl.sv`, `fifo_mem.sv` → Buffers FIFO para UART.
* `spi_adc1362.v` → Controlador SPI para el acelerómetro ADXL362.
* `main.c` → Programa principal ejecutado por el procesador.
* `start.s` → Código de arranque.
* `link.ld` → Configuración de memoria.

---

## Ejecución

1. Abrir el proyecto en Vivado.
2. Ejecutar síntesis e implementación.
3. Generar el bitstream.
4. Programar la FPGA Nexys 4 DDR.
5. Conectar el puerto serial a la computadora.
6. Configurar Release beta 5.5:

   * Baud rate: 9600.
   * Puerto serial correspondiente.
7. Ejecutar el sistema y observar los datos enviados por UART.

---

## Notas

El sistema utiliza un esquema de **memoria mapeada**, lo que permite integrar memorias y periféricos bajo una misma interfaz de acceso. Esta estructura facilita la expansión del microcontrolador, permitiendo agregar nuevos módulos como GPIO, UART, SPI u otros periféricos personalizados.

