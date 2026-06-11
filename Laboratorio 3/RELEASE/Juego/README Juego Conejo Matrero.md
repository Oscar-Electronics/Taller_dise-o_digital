# 🐰 Conejo Matrero

## Descripción

**Conejo Matrero** es un videojuego desarrollado en Python utilizando la biblioteca `pygame-ce`. El juego está inspirado en la dinámica de *Space Invaders*, pero adaptado a una temática original donde un conejo debe defenderse de abejas lanzando zanahorias.

El proyecto forma parte del **Laboratorio 3** del curso **Taller de Diseño de Sistemas Digitales**.

## Objetivo del juego

El objetivo es eliminar la mayor cantidad posible de abejas antes de perder todas las vidas. Cada abeja eliminada suma puntos al marcador.

## Controles

| Tecla | Acción |
|---|---|
| `A` | Mover conejo a la izquierda |
| `D` | Mover conejo a la derecha |
| `Espacio` | Lanzar zanahoria |
| `W` | Reiniciar partida en pantalla final |
| `S` | Salir del juego en pantalla final |

## Funcionamiento

El jugador controla un conejo ubicado en la parte inferior de la pantalla. El conejo puede moverse horizontalmente y lanzar zanahorias hacia arriba.

Las abejas aparecen organizadas en filas y columnas. Estas se mueven horizontalmente por la pantalla y, al tocar un borde, cambian de dirección y bajan una posición.

Cuando una zanahoria impacta una abeja:

- La abeja desaparece.
- Se muestra una animación de explosión.
- El puntaje aumenta en 10 puntos.

Si una abeja toca al conejo o llega a la parte inferior de la pantalla:

- El jugador pierde una vida.

El jugador inicia con 3 vidas. Cuando las vidas llegan a cero, aparece una pantalla de finalización con el puntaje total y las opciones de reiniciar o salir.
<img width="997" height="783" alt="image" src="https://github.com/user-attachments/assets/4cf16e9d-6424-49e4-a105-1f4c91600f85" />

## Integración futura con FPGA y acelerómetro

Actualmente, el juego utiliza entradas de teclado para controlar al conejo. Sin embargo, fue diseñado para adaptarse posteriormente a una interfaz física basada en una FPGA y un acelerómetro ADXL362.

La idea es reemplazar las entradas del teclado por coordenadas provenientes del acelerómetro:

| Coordenada | Función propuesta |
|---|---|
| `X` | Movimiento lateral del conejo |
| `Y` | Acción secundaria o control adicional |
| `Z` | Lanzamiento de zanahorias |

De esta forma, la FPGA funcionaría como un control físico del juego. La aplicación en Python recibiría los datos procesados desde la FPGA y los usaría para mover al personaje y ejecutar acciones dentro del juego.

## Sistema de dificultad

Cuando el jugador elimina todas las abejas, se genera una nueva oleada. En cada nueva oleada, la velocidad de las abejas aumenta, haciendo que el juego sea progresivamente más difícil.

## Recursos gráficos

El juego utiliza sprites en formato PNG ubicados en la carpeta `assets`.

```text
assets/
├── fondo.png
├── conejo_idle.png
├── conejo_walk.png
├── conejo_jump.png
├── zanahoria1.png
├── zanahoria2.png
├── zanahoria3.png
├── zanahoria4.png
├── zanahoria5.png
├── zanahoria6.png
├── explosion1.png
├── explosion2.png
├── explosion3.png
├── explosion4.png
├── explosion5.png
├── explosion6.png
├── abeja1.png
├── abeja2.png
└── abeja3.png


