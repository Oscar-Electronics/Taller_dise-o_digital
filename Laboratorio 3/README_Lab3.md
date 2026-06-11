# Microcontrolador RISC-V en FPGA

## PicoRV32 + UART + SPI ADXL362

Este proyecto implementa un sistema embebido basado en un núcleo **RISC-V PicoRV32** sobre una FPGA **Nexys 4 DDR**. El diseño integra memoria de programa, memoria de datos y periféricos mapeados en memoria, incluyendo **GPIO para LEDs**, **UART** para comunicación serial y un controlador **SPI** para la lectura del acelerómetro **ADXL362**.

Además del sistema principal del microcontrolador, el repositorio del **Laboratorio 3** incluye la interfaz de control para visualizar y utilizar los datos del acelerómetro, así como el juego desarrollado para probar la interacción con los datos recibidos.

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
  Módulo de comunicación serial configurado a **9600 baudios**. Permite enviar los datos obtenidos desde el sistema embebido hacia una computadora para su visualización o uso en una aplicación externa.

  Componentes internos:

  * `uart_tx`
  * `uart_rx`
  * `fifo_tx`
  * `fifo_rx`

* **SPI ADXL362**  
  Periférico mapeado en memoria encargado de permitir la comunicación entre el procesador y el acelerómetro **ADXL362**. Este bloque permite iniciar lecturas desde software y obtener los datos de aceleración en los ejes **X**, **Y** y **Z**.

  En la implementación actual, la lógica SPI se organiza de forma modular:

  * `spi_adxl362`: interfaz mapeada en memoria entre el CPU y el acelerómetro.
  * `adxl362_controller`: controlador encargado de inicializar el acelerómetro y coordinar la lectura de datos.
  * `spi_master`: maestro SPI genérico encargado de generar `spi_sclk`, enviar datos por `spi_mosi` y recibir datos por `spi_miso`.

* **Periféricos**

  * Botón N17, usado como entrada.
  * LEDs, usados como salida e indicadores de estado.
  * UART, usada para transmisión serial.
  * SPI, usado para adquisición de datos del acelerómetro.

* **top_microprocesador**  
  Módulo superior encargado de integrar el procesador, memorias, periféricos, decodificación de direcciones y señales externas de la FPGA.

---

## Diagrama del sistema

<img width="953" height="715" alt="Diagrama del sistema" src="https://github.com/user-attachments/assets/e4262a46-2c22-4d1f-9ee1-085643db9244" />

---

## Mapa de memoria

El sistema utiliza memoria mapeada para acceder a los periféricos. Las direcciones del acelerómetro **ADXL362** se mantienen igual respecto a la implementación anterior; el cambio principal está en la organización interna del módulo SPI, no en el mapa de memoria externo.

| Dirección                   | Dispositivo           | Descripción |
| --------------------------- | --------------------- | ----------- |
| `0x0000_0000 – 0x0000_07FC` | ROM                   | Memoria de programa |
| `0x0000_2000`               | Botón N17             | Lectura de entrada |
| `0x0000_2004`               | LEDs                  | Escritura de salida |
| `0x0000_2010`               | UART Control          | Registro de control UART |
| `0x0000_2018`               | UART Data             | Registro de datos UART |
| `0x0000_201C`               | UART Status           | Estado de UART |
| `0x0000_2020`               | SPI Control / Status  | Escritura del bit 0 inicia una lectura del ADXL362. En lectura, bit 0 = `busy` y bit 1 = `data_ready` |
| `0x0000_2028`               | SPI XY Data           | Lectura de datos del acelerómetro: bits `[15:0]` = X y bits `[31:16]` = Y |
| `0x0000_202C`               | SPI Z Data            | Lectura de datos del eje Z con extensión de signo |
| `0x0004_0000 – 0x0004_1FFC` | RAM                   | Memoria de datos |

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

1. El procesador escribe en el bit 0 del registro `SPI Control / Status`.
2. El periférico `spi_adxl362` genera la señal interna `start_read`.
3. El módulo `adxl362_controller` coordina la lectura del acelerómetro ADXL362.
4. El módulo `spi_master` genera las señales físicas del protocolo SPI.
5. Se leen los datos de aceleración de los ejes X, Y y Z.
6. Los datos se guardan en los registros mapeados en memoria.
7. El procesador obtiene X/Y desde `SPI XY Data` y Z desde `SPI Z Data`.
8. Los valores pueden enviarse por UART hacia la computadora para ser visualizados o utilizados por una aplicación externa.

Los LEDs se utilizan como indicadores visuales del estado del sistema, por ejemplo, para mostrar inicialización, funcionamiento correcto o errores de comunicación.

---

## Funcionamiento del controlador ADXL362

El módulo `adxl362_controller` se encarga de controlar la comunicación SPI con el acelerómetro **ADXL362** para inicializarlo y leer sus datos de aceleración. Después del reinicio, el controlador espera un tiempo inicial y luego configura el sensor escribiendo el valor `0x02` en el registro `POWER_CTL` ubicado en la dirección `0x2D`, lo que activa el modo de medición. Posteriormente, el sistema queda en espera hasta recibir la señal `start_read`. Cuando esta señal se activa, el controlador baja `spi_cs_n`, envía el comando de lectura `0x0B` junto con la dirección inicial `0x0E`, y recibe los bytes correspondientes a los datos de los ejes X, Y y Z. Al finalizar, combina los bytes recibidos, aplica extensión de signo de 12 a 16 bits y actualiza las salidas `x_data`, `y_data` y `z_data`. Finalmente, activa `data_ready` e indica que el módulo ya no está ocupado mediante `busy = 0`.

---

## Funcionamiento del maestro SPI

El módulo `spi_master` implementa un maestro SPI genérico encargado de transmitir y recibir un byte por comunicación serial síncrona. Cuando recibe la señal `start` y el módulo no está ocupado, carga el byte de transmisión `tx_byte`, activa la señal `busy` y comienza a generar el reloj SPI `sclk` a partir del reloj principal `clk`, usando el divisor definido por `CLK_FREQ` y `SPI_FREQ`. Durante la transferencia, envía los bits por `mosi` desde el bit más significativo hasta el menos significativo, mientras captura simultáneamente los bits recibidos por `miso`. Al completar los 8 bits, guarda el byte recibido en `rx_byte`, desactiva `busy`, activa brevemente `done` y queda listo para iniciar una nueva transferencia.

---

## Aplicación de control con acelerómetro

El repositorio también incluye una aplicación de escritorio llamada **accel to controlV0**, desarrollada en **C# Windows Forms**. Esta aplicación recibe los datos del acelerómetro mediante UART y los convierte en acciones de teclado o movimiento del mouse, dependiendo del modo de control seleccionado.

La aplicación espera recibir los datos con el siguiente formato:

```txt
X=### Y=### Z=###
```

El espacio se utiliza para separar las variables X, Y y Z, mientras que el símbolo `=` permite extraer el valor numérico de cada eje.

La aplicación permite seleccionar el puerto COM, configurar el baudrate, iniciar o detener el acelerómetro, visualizar los datos recibidos y escoger entre diferentes modos de control:

* **Control WASD Legacy**: usa las teclas W, A, S, D y espacio.
* **Control Flechas**: usa las flechas del teclado y espacio.
* **Control Mouse**: usa los ángulos de inclinación de la FPGA para mover el cursor.

---

## Juego conejo

El repositorio incluye un juego utilizado como demostración de interacción. Este juego permite probar el sistema de control generado a partir del acelerómetro, de forma que los datos enviados por la FPGA y procesados por la aplicación puedan convertirse en acciones dentro del juego.

---

## Validación

El sistema fue verificado mediante:

* Simulación en Vivado.
* Implementación en hardware sobre la FPGA Nexys 4 DDR.
* Lectura del acelerómetro ADXL362 mediante SPI.
* Comunicación serial mediante UART.
* Visualización de datos usando la aplicación de control.
* Pruebas de interacción con el juego conejo.

---

## Herramientas utilizadas

* Vivado Design Suite.
* FPGA Nexys 4 DDR.
* PicoRV32.
* Toolchain RISC-V.
* C# Windows Forms.
* Acelerómetro ADXL362.
* Comunicación UART.
* Comunicación SPI.
* Aplicación accel to controlV0.
* Juego Conejo Matrero.

---



### Descripción de archivos principales

* `top_microprocesador.v` → Integración general del sistema.
* `picorv32.v` → Núcleo RISC-V.
* `bridge.v` → Puente entre PicoRV32 y periféricos AXI-Lite.
* `axi_gpio_simple.v` → Control de LEDs.
* `axi_uart.v` → Periférico UART mapeado en memoria.
* `uart.sv` → Comunicación serial UART.
* `uart_tx.sv` → Transmisor UART.
* `uart_rx.sv` → Receptor UART.
* `fifo.sv`, `fifo_ctrl.sv`, `fifo_mem.sv` → Buffers FIFO para UART.
* `spi_adc1362.v` → Periférico SPI mapeado en memoria para el acelerómetro ADXL362.
* `spi_master.v` → Maestro SPI genérico para transmisión y recepción de bytes.
* `adxl362_controller` → Controlador lógico del acelerómetro ADXL362, encargado de inicialización y lectura.
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
6. Abrir la aplicación de control.
7. Buscar y seleccionar el puerto COM correspondiente.
8. Configurar el baudrate:

   ```txt
   9600
   ```

9. Presionar **Conectar**.
10. Presionar **Iniciar Acelerómetro** para comenzar la lectura.
11. Seleccionar el modo de control deseado.
12. Observar los datos enviados por UART o utilizar el control con el juego.
13. Para finalizar, presionar **Detener Acelerómetro** y luego **Desconectar**.


---

## Notas

El sistema utiliza un esquema de **memoria mapeada**, lo que permite integrar memorias y periféricos bajo una misma interfaz de acceso. Esta estructura facilita la expansión del microcontrolador, permitiendo agregar nuevos módulos como GPIO, UART, SPI u otros periféricos personalizados.

El mapa de memoria del acelerómetro **no cambia** con la nueva implementación modular. Las direcciones `0x0000_2020`, `0x0000_2028` y `0x0000_202C` se mantienen, pero la lógica interna ahora se organiza de forma más clara mediante un periférico mapeado en memoria, un controlador específico para el ADXL362 y un maestro SPI genérico.
