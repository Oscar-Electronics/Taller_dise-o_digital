# accel to controlV0

Aplicación de escritorio desarrollada en **C# Windows Forms** para controlar teclas del teclado o movimientos del mouse a partir de los datos recibidos desde un acelerómetro mediante comunicación serial UART.

La aplicación **accel to controlV0** recibe los datos del acelerómetro desde una FPGA o dispositivo externo a través de un puerto COM. Con esta información calcula los ángulos de inclinación de la FPGA y, dependiendo del modo de control seleccionado, genera como salida pulsaciones de teclado o desplazamientos del mouse.

## Descripción general

El programa permite conectar una FPGA o sistema externo mediante comunicación serial UART. Una vez establecida la conexión, la aplicación recibe los valores de aceleración en los ejes **X**, **Y** y **Z**, los procesa y los muestra en la interfaz gráfica.

A partir de estos datos se calculan:

- Aceleración en los ejes X, Y y Z.
- Velocidad aproximada en los ejes X, Y y Z.
- Ángulos de inclinación `pitch` y `roll`.
- Magnitud del movimiento.
- Acción de control activa.

La aplicación puede utilizar los datos del acelerómetro para controlar:

- Teclas **WASD**.
- Flechas del teclado.
- Barra espaciadora.
- Movimiento del mouse.

## Formato de datos UART

Para que la aplicación funcione correctamente, los datos recibidos por UART deben tener el siguiente formato:

```txt
X=### Y=### Z=###
```

Ejemplo:

```txt
X=120 Y=-35 Z=250
```

El programa utiliza el espacio `" "` para separar las variables correspondientes a los ejes **X**, **Y** y **Z**. Luego utiliza el símbolo `"="` para extraer el valor numérico de cada aceleración.

Por esta razón, el formato enviado por la FPGA debe respetar la siguiente estructura:

```txt
X=valor Y=valor Z=valor
```

Si el formato cambia, la aplicación no podrá separar ni interpretar correctamente los datos recibidos.

## Funcionamiento interno

Cuando se reciben datos por el puerto serial, la aplicación realiza los siguientes pasos:

1. Lee una línea completa desde UART.
2. Separa la cadena usando espacios.
3. Extrae los valores numéricos después del símbolo `=`.
4. Guarda los valores como aceleraciones en X, Y y Z.
5. Calcula velocidad aproximada, ángulos de inclinación y magnitud.
6. Actualiza la interfaz gráfica.
7. Activa la salida correspondiente según el modo de control seleccionado.

## Ecuaciones utilizadas

### Velocidad aproximada

La velocidad se calcula de forma acumulativa a partir de la aceleración y el intervalo de tiempo entre muestras.

```txt
velocidad_x(k) = velocidad_x(k-1) + aceleración_x(k) · Δt
```

```txt
velocidad_y(k) = velocidad_y(k-1) + aceleración_y(k) · Δt
```

```txt
velocidad_z(k) = velocidad_z(k-1) + aceleración_z(k) · Δt
```

Donde:

- `k` representa la muestra actual.
- `k-1` representa la muestra anterior.
- `Δt` es el tiempo transcurrido entre muestras.

Aunque la aplicación calcula las velocidades, estas se utilizan únicamente como referencia o depuración. No se usan para el control principal porque no son datos completamente confiables. Esto se debe a que los acelerómetros pueden presentar `drift`, ruido y acumulación de error. Además, la forma de cálculo utilizada hace que los valores de velocidad puedan seguir creciendo con el tiempo, ya que no se reinician automáticamente cuando la FPGA se encuentra en reposo.

### Cálculo de pitch

```txt
pitch = atan(aceleración_y / sqrt(aceleración_x² + aceleración_z²)) · 180 / π
```

En el código se implementa como:

```csharp
pitch = Math.Atan2(
    accelY,
    Math.Sqrt(accelX * accelX + accelZ * accelZ)
) * 180.0 / Math.PI;
```

### Cálculo de roll

```txt
roll = atan(-aceleración_x / sqrt(aceleración_y² + aceleración_z²)) · 180 / π
```

En el código se implementa como:

```csharp
roll = Math.Atan2(
    -accelX,
    Math.Sqrt(accelY * accelY + accelZ * accelZ)
) * 180.0 / Math.PI;
```

### Magnitud del movimiento

```txt
magnitud = sqrt(aceleración_x² + aceleración_y² + aceleración_z²)
```

En el código se implementa como:

```csharp
double magnitud = Math.Sqrt(
    accelX * accelX +
    accelY * accelY +
    accelZ * accelZ
);
```

La magnitud se utiliza principalmente para activar la tecla de espacio cuando se detecta un movimiento fuerte de la FPGA.

## Modos de control

La aplicación cuenta con tres modos principales de control:

1. **Control WASD Legacy**
2. **Control por flechas**
3. **Control Mouse**

La aplicación evita que se activen varios modos al mismo tiempo. Cuando se selecciona un modo, los demás se desactivan automáticamente.

## Control WASD Legacy

Este modo utiliza las teclas:

- `W`
- `A`
- `S`
- `D`
- `Space`

Es el modo recomendado para videojuegos, ya que utiliza la función `keybd_event`, la cual presenta mejor compatibilidad con aplicaciones que detectan entradas de teclado simuladas.

| Movimiento de la FPGA | Tecla activada |
|---|---|
| Inclinación hacia adelante | W |
| Inclinación hacia atrás | S |
| Inclinación hacia la izquierda | A |
| Inclinación hacia la derecha | D |
| Movimiento fuerte | Space |

## Control por flechas

Este modo utiliza las teclas de dirección del teclado:

- `↑`
- `↓`
- `←`
- `→`
- `Space`

| Movimiento de la FPGA | Tecla activada |
|---|---|
| Inclinación hacia adelante | Flecha arriba |
| Inclinación hacia atrás | Flecha abajo |
| Inclinación hacia la izquierda | Flecha izquierda |
| Inclinación hacia la derecha | Flecha derecha |
| Movimiento fuerte | Space |

## Esquema de activación para WASD y flechas

Los controles se activan y desactivan usando los ángulos `pitch`, `roll` y la magnitud de aceleración.

| Comando o tecla | Activación | Desactivación |
|---|---|---|
| W o ↑ | `pitch < -30°` | `pitch > -15°` |
| S o ↓ | `pitch > 30°` | `pitch < 15°` |
| A o ← | `roll > 40°` | `roll < 20°` |
| D o → | `roll < -40°` | `roll > -20°` |
| Space | `magnitud > 500` | `magnitud < 450` |
| Centro | `pitch` y `roll` cercanos a `0°` | Sin tecla activa |

La zona central se utiliza para evitar que pequeñas variaciones o ruido del acelerómetro activen movimientos no deseados.

## Control Mouse

En el modo de control del mouse, la aplicación no activa teclas. En su lugar, utiliza los ángulos `pitch` y `roll` para mover el cursor en la pantalla.

Primero se obtiene la posición actual del mouse. Luego, si la FPGA está fuera de la zona central, los ángulos se convierten en desplazamientos en los ejes X y Y de la pantalla.

La sensibilidad utilizada en esta versión es:

```txt
sensibilidad = 0.5
```

Las tasas de cambio se calculan como:

```txt
dx = -roll · sensibilidad
```

```txt
dy = pitch · sensibilidad
```

Luego, estos valores se convierten a tipo entero para obtener un desplazamiento en píxeles. Finalmente, se envía al mouse la nueva posición:

```txt
posición nueva = (posición_x, posición_y) + (dx, dy)
```

En el código se implementa de la siguiente forma:

```csharp
Point pos = Cursor.Position;

double sensibilidad = 0.5;

int dx = (int)(-roll * sensibilidad);
int dy = (int)(pitch * sensibilidad);

SetCursorPos(
    pos.X + dx,
    pos.Y + dy
);
```

## Interfaz de usuario

La interfaz gráfica permite:

- Buscar puertos COM disponibles.
- Seleccionar el puerto COM.
- Seleccionar el baudrate.
- Conectar el puerto serial.
- Desconectar el puerto serial.
- Iniciar el envío de datos del acelerómetro.
- Detener el envío de datos del acelerómetro.
- Visualizar los datos recibidos por UART.
- Visualizar los datos procesados de aceleración.
- Visualizar velocidades aproximadas.
- Visualizar los ángulos `pitch` y `roll`.
- Seleccionar el modo de control.
- Limpiar el monitor serial.

## Comandos enviados a la FPGA

La aplicación envía comandos simples a la FPGA para iniciar o detener el envío de datos del acelerómetro.

| Botón de la aplicación | Comando enviado | Función |
|---|---|---|
| Iniciar Acelerómetro | `S/n` | Solicita iniciar el envío de datos |
| Detener Acelerómetro | `F/n` | Solicita detener el envío de datos |

## Pasos para utilizar la aplicación

1. Descargar la carpeta comprimida de **Release beta 6**.
2. Descomprimir la carpeta en la computadora del usuario.
3. Hacer doble clic en el archivo:

```txt
accel a control v0.exe
```

4. Si aparece una advertencia de Windows indicando que el archivo no tiene firma digital, seleccionar la opción para permitir la ejecución del programa.
5. Una vez que inicia la aplicación, presionar el botón **Buscar COM** para buscar los puertos COM disponibles.
6. Seleccionar el puerto COM correspondiente en el menú desplegable.
7. Seleccionar el baudrate correspondiente al programa. En este caso se utiliza:

```txt
9600 baudios
```

8. Hacer clic en el botón **Conectar** para iniciar la conexión serial.
9. Para iniciar el acelerómetro, presionar el botón **Iniciar Acelerómetro**.
10. Para detener el acelerómetro, presionar el botón **Detener Acelerómetro**.
11. Para iniciar el control, seleccionar uno de los modos disponibles:
    - **Control WASD Legacy**: activa las teclas W, A, S, D y Space.
    - **Control Flechas**: activa las flechas del teclado y Space.
    - **Control Mouse**: controla el movimiento del mouse según el ángulo de la FPGA.
12. Cuando se desee cerrar la conexión por el puerto COM, presionar el botón **Desconectar**.
13. El botón **Limpiar monitor** borra todas las líneas de datos guardadas en el monitor serial. Además, el monitor serial se limpia automáticamente cuando llega a las 2000 líneas.

## Requisitos

- Sistema operativo Windows.
- Aplicación compilada en C# Windows Forms.
- Puerto COM disponible.
- FPGA o dispositivo externo con comunicación UART.
- Acelerómetro conectado al sistema externo.
- Datos enviados en formato:

```txt
X=### Y=### Z=###
```

## Estructura recomendada del repositorio

```txt
/
├── accel_a_control_v0/
│   └── Código fuente de la aplicación en C# Windows Forms
│
├── Releases/
│   └── Archivos .bit y ejecutables de versiones estables
│
├── Documentación/
│   └── Imágenes, diagramas y explicación adicional
│
└── README.md
```

## Carpeta de Releases

Se recomienda agregar una carpeta llamada `Releases` para almacenar los archivos `.bit` de la FPGA y las versiones ejecutables de la aplicación.

Esta carpeta permite conservar versiones funcionales del proyecto sin necesidad de volver a generar el bitstream o recompilar la aplicación.

Ejemplo:

```txt
Releases/
├── Release_beta_6/
│   ├── accel a control v0.exe
│   └── sistema_fpga_beta_6.bit
│
├── beta_5_5.bit
├── beta_5_6.bit
└── final.bit
```

## Notas importantes

- El modo **Control WASD Legacy** es el recomendado para juegos.
- El modo basado en `SendInput` se mantiene en el código, pero no es el modo principal porque no funciona correctamente en todos los casos.
- Las velocidades calculadas no se utilizan para el control, solamente como información de depuración.
- El formato UART debe mantenerse como `X=### Y=### Z=###`.
- Solo debe seleccionarse un modo de control a la vez.
- El monitor serial se limpia automáticamente al alcanzar 2000 líneas para evitar acumulación excesiva de datos en la interfaz.
- El baudrate utilizado en esta versión es de **9600 baudios**.

