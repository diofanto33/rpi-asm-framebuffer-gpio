.include "utils.s" 
.include "data.s"
.include "bg_sea.s"
.include "plane.s"

.globl main


/* actualizarFrameBuffer:
    Parámetros:
        x0 = Dirección del buffer secundario

    Copia todo lo que hay en el buffer secundario al frame-buffer.
    Se ejecuta una vez por fotograma.
    La dirección del frame-buffer debe estar en dir_frameBuffer.

    No modifica ningún parámetro.
    Utiliza x9, x10 y x11.
 */
.equ SCREEN_PIXELS_div_2_menos_1, SCREEN_PIXELS/2 - 1
screen_pixels_div_2_menos_1: .dword SCREEN_PIXELS_div_2_menos_1 
// Último indice tomando los elementos como dword
actualizarFrameBuffer:

    ldr x0, =bufferSecundario        
    ldr x9, dir_frameBuffer
    ldr x10, screen_pixels_div_2_menos_1
loop_actualizarFrameBuffer:
    cmp x10, #0
    b.lt end_loop_actualizarFrameBuffer
    ldr x11, [x0, x10, lsl #3] // Voy copiando los colores de a 2
    str x11, [x9, x10, lsl #3]
    sub x10, x10, #1
    b loop_actualizarFrameBuffer
end_loop_actualizarFrameBuffer:
    br lr

main:
	mov x20, x0
    adr x1, dir_frameBuffer
    /* store the memory address of the frame-buffer in dir_frameBuffer */
	str x0, [x1]
init_loop:
	/* draw the background */ 
    bl draw_bg
    bl draw_sea


    /* draw the airplane */ 
    mov x3, #200
    mov x4, #200 
    bl airplane 
    bl propeller_frame_1
    /* copy the contents of the secondary buffer to the frame-buffer */ 
    bl actualizarFrameBuffer 
    /* draw the background */ 
    bl draw_bg
    bl draw_sea

    /* draw the airplane */ 
    mov x3, #200 
    mov x4, #200 
    bl airplane
    bl propeller_frame_2

    /* copy the contents of the secondary buffer to the frame-buffer */ 
    bl actualizarFrameBuffer
    b init_loop
