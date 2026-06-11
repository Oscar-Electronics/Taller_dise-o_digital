import pygame
import random
import serial
import os

pygame.init()

# =========================
# Rutas de archivos
# =========================
BASE_DIR = os.path.dirname(os.path.abspath(__file__))
ASSETS_DIR = os.path.join(BASE_DIR, "assets")

# =========================
# UART FPGA
# =========================
PUERTO = "COM4"   # CAMBIAR por el COM real de la Nexys
BAUD = 9600

ser = serial.Serial(PUERTO, BAUD, timeout=0)

# =========================
# Ventana
# =========================
ANCHO = 800
ALTO = 600

pantalla = pygame.display.set_mode((ANCHO, ALTO))
pygame.display.set_caption("Conejo Matrero FPGA")

reloj = pygame.time.Clock()

# =========================
# Colores
# =========================
BLANCO = (255, 255, 255)

# =========================
# Cargar imágenes
# =========================
zanahorias = []

for i in range(1, 7):
    img = pygame.image.load(
        os.path.join(ASSETS_DIR, f"zanahoria{i}.png")
    ).convert_alpha()

    img = pygame.transform.scale(img, (50, 50))
    zanahorias.append(img)

explosiones_img = []

for i in range(1, 7):
    img = pygame.image.load(
        os.path.join(ASSETS_DIR, f"explosion{i}.png")
    ).convert_alpha()

    img = pygame.transform.scale(img, (60, 60))
    explosiones_img.append(img)

fondo = pygame.image.load(
    os.path.join(ASSETS_DIR, "fondo.png")
).convert()

fondo = pygame.transform.scale(fondo, (ANCHO, ALTO))

conejo_idle = pygame.image.load(
    os.path.join(ASSETS_DIR, "conejo_idle.png")
).convert_alpha()

conejo_walk = pygame.image.load(
    os.path.join(ASSETS_DIR, "conejo_walk.png")
).convert_alpha()

conejo_jump = pygame.image.load(
    os.path.join(ASSETS_DIR, "conejo_jump.png")
).convert_alpha()

conejo_idle = pygame.transform.scale(conejo_idle, (150, 150))
conejo_walk = pygame.transform.scale(conejo_walk, (150, 150))
conejo_jump = pygame.transform.scale(conejo_jump, (150, 150))

abejas = []

for i in range(1, 4):
    img = pygame.image.load(
        os.path.join(ASSETS_DIR, f"abeja{i}.png")
    ).convert_alpha()

    img = pygame.transform.scale(img, (77, 75))
    abejas.append(img)

# =========================
# Jugador
# =========================
conejo_w = 150
conejo_h = 150
conejo_x = ANCHO // 2 - conejo_w // 2
conejo_y = ALTO - 150
vel_conejo = 8
estado_conejo = "idle"

# =========================
# Bala
# =========================
bala_w = 5
bala_h = 15
bala_x = 0
bala_y = 0
bala_activa = False
vel_bala = 10
bala_frame = 0

# =========================
# Enemigos
# =========================
enemigos = []
filas = 3
columnas = 8
enemigo_w = 70
enemigo_h = 70
espacio_x = 85
espacio_y = 80

for fila in range(filas):
    for col in range(columnas):
        x = 80 + col * espacio_x
        y = 60 + fila * espacio_y
        enemigos.append(pygame.Rect(x, y, enemigo_w, enemigo_h))

direccion_enemigos = 1
vel_enemigos = 2
bajada_enemigos = 15

puntaje = 0
vidas = 3

fuente = pygame.font.SysFont(None, 36)
fuente_gameover = pygame.font.SysFont(None, 64)

ejecutando = True

explosiones = []
frame_abeja = 0

ultimo_comando = "S"


def leer_fpga():
    global ultimo_comando

    while ser.in_waiting > 0:
        dato = ser.read(1).decode(errors="ignore").upper()

        if dato in ["A", "D", "W", "S"]:
            ultimo_comando = dato
            print("FPGA:", dato)

    return ultimo_comando


def reiniciar_enemigos():
    enemigos.clear()

    for fila in range(filas):
        for col in range(columnas):
            x = 80 + col * espacio_x
            y = 60 + fila * espacio_y
            enemigos.append(
                pygame.Rect(x, y, enemigo_w, enemigo_h)
            )


def pantalla_game_over(pantalla, puntaje, fuente):
    global ultimo_comando

    ultimo_comando = "S"

    while True:
        pantalla.fill((0, 0, 0))

        titulo = fuente.render(
            "JUEGO TERMINADO",
            True,
            (255, 0, 0)
        )

        score = fuente.render(
            f"Puntaje Total: {puntaje}",
            True,
            (255, 255, 255)
        )

        reiniciar = fuente.render(
            "W -> Jugar de nuevo",
            True,
            (0, 255, 0)
        )

        salir = fuente.render(
            "S -> Salir",
            True,
            (255, 255, 255)
        )

        pantalla.blit(titulo, (220, 180))
        pantalla.blit(score, (250, 250))
        pantalla.blit(reiniciar, (240, 330))
        pantalla.blit(salir, (300, 390))

        pygame.display.update()

        comando = leer_fpga()

        if comando == "W":
            ultimo_comando = "S"
            return True

        if comando == "S":
            return False

        for evento in pygame.event.get():
            if evento.type == pygame.QUIT:
                return False

            if evento.type == pygame.KEYDOWN:
                if evento.key == pygame.K_w:
                    return True

                if evento.key == pygame.K_s:
                    return False


while ejecutando:
    reloj.tick(60)

    frame_abeja += 0.15

    if frame_abeja >= len(abejas):
        frame_abeja = 0

    for evento in pygame.event.get():
        if evento.type == pygame.QUIT:
            ejecutando = False

    # =========================
    # Entrada FPGA
    # =========================
    comando = leer_fpga()

    x_coord = 0
    z_coord = 0

    if comando == "A":
        x_coord = -1

    elif comando == "D":
        x_coord = 1

    elif comando == "W":
        z_coord = 1
        ultimo_comando = "S"

    elif comando == "S":
        x_coord = 0

    # =========================
    # Teclado de respaldo
    # =========================
    teclas = pygame.key.get_pressed()

    if teclas[pygame.K_a]:
        x_coord = -1

    if teclas[pygame.K_d]:
        x_coord = 1

    if teclas[pygame.K_SPACE]:
        z_coord = 1

    # =========================
    # Movimiento conejo
    # =========================
    conejo_x += x_coord * vel_conejo

    if x_coord != 0:
        estado_conejo = "walk"
    else:
        estado_conejo = "idle"

    if z_coord == 1:
        estado_conejo = "jump"

    if conejo_x < 0:
        conejo_x = 0

    if conejo_x > ANCHO - conejo_w:
        conejo_x = ANCHO - conejo_w

    conejo_rect = pygame.Rect(
        conejo_x,
        conejo_y,
        conejo_w,
        conejo_h
    )

    # =========================
    # Disparo
    # =========================
    if z_coord == 1 and not bala_activa:
        bala_x = conejo_x + conejo_w // 2 - bala_w // 2
        bala_y = conejo_y
        bala_frame = 0
        bala_activa = True

    if bala_activa:
        bala_y -= vel_bala
        bala_frame += 0.2

        if bala_frame >= len(zanahorias):
            bala_frame = 0

        if bala_y < 0:
            bala_activa = False

    bala_rect = pygame.Rect(
        bala_x,
        bala_y,
        bala_w,
        bala_h
    )

    # =========================
    # Movimiento enemigos
    # =========================
    mover_abajo = False

    for enemigo in enemigos:
        enemigo.x += direccion_enemigos * vel_enemigos

        if enemigo.right >= ANCHO or enemigo.left <= 0:
            mover_abajo = True

    if mover_abajo:
        direccion_enemigos *= -1

        for enemigo in enemigos:
            enemigo.y += bajada_enemigos

    # =========================
    # Colisión bala-enemigo
    # =========================
    if bala_activa:
        for enemigo in enemigos[:]:
            if bala_rect.colliderect(enemigo):
                explosiones.append({
                    "x": enemigo.centerx,
                    "y": enemigo.centery,
                    "frame": 0
                })

                enemigos.remove(enemigo)
                bala_activa = False
                puntaje += 10
                break

    # =========================
    # Colisión enemigo-conejo
    # =========================
    for enemigo in enemigos[:]:
        if enemigo.colliderect(conejo_rect) or enemigo.bottom >= ALTO:
            enemigos.remove(enemigo)
            vidas -= 1

            if vidas <= 0:
                opcion_reiniciar = pantalla_game_over(
                    pantalla,
                    puntaje,
                    fuente_gameover
                )

                if opcion_reiniciar:
                    vidas = 3
                    puntaje = 0
                    bala_activa = False
                    explosiones.clear()

                    conejo_x = ANCHO // 2 - conejo_w // 2
                    conejo_y = ALTO - 150

                    reiniciar_enemigos()

                else:
                    ejecutando = False

    # =========================
    # Nuevo nivel
    # =========================
    if len(enemigos) == 0:
        vel_enemigos += 1
        reiniciar_enemigos()

    # =========================
    # Dibujar
    # =========================
    pantalla.blit(fondo, (0, 0))

    if estado_conejo == "idle":
        pantalla.blit(conejo_idle, (conejo_x, conejo_y))

    elif estado_conejo == "walk":
        pantalla.blit(conejo_walk, (conejo_x, conejo_y))

    elif estado_conejo == "jump":
        pantalla.blit(conejo_jump, (conejo_x, conejo_y))

    if bala_activa:
        frame = int(bala_frame)

        pantalla.blit(
            zanahorias[frame],
            (bala_x - 20, bala_y - 20)
        )

    for enemigo in enemigos:
        pantalla.blit(
            abejas[int(frame_abeja)],
            (enemigo.x, enemigo.y)
        )

    for explosion in explosiones[:]:
        frame = int(explosion["frame"])

        pantalla.blit(
            explosiones_img[frame],
            (explosion["x"] - 40, explosion["y"] - 40)
        )

        explosion["frame"] += 0.3

        if explosion["frame"] >= len(explosiones_img):
            explosiones.remove(explosion)

    texto_puntaje = fuente.render(
        "Puntaje: " + str(puntaje),
        True,
        BLANCO
    )

    texto_vidas = fuente.render(
        "Vidas: " + str(vidas),
        True,
        BLANCO
    )

    pantalla.blit(texto_puntaje, (10, 10))
    pantalla.blit(texto_vidas, (650, 10))

    pygame.display.update()

ser.close()
pygame.quit()