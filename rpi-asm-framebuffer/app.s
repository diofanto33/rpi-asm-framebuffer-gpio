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
    ldr x1, dir_frameBuffer
    ldr x21, screen_pixels_div_2_menos_1
loop_actualizarFrameBuffer:
    cmp x21, #0
    b.lt end_loop_actualizarFrameBuffer
    ldr x23, [x0, x21, lsl #3] // Voy copiando los colores de a 2
    str x23, [x1, x21, lsl #3]
    sub x21, x21, #1
    b loop_actualizarFrameBuffer
end_loop_actualizarFrameBuffer:
    br lr

main:
	mov x20, x0
    adr x1, dir_frameBuffer
    /* store the memory address of the frame-buffer in dir_frameBuffer */
	str x0, [x1]

    mov x3, #100
    mov x4, #100
    bl init_loop

init_loop:
    bl draw_bg
    bl draw_sea
  
    bl airplane 
    bl gpio_func
    
    bl actualizarFrameBuffer 
    bl doDelay

    b init_loop


InfLoop:
    b InfLoop

gpio_func: 
    sub sp, sp, #8										
    stur x9, [sp]

	// Seteamos el GPIO para poder realizar la lectura de los inputs
	mov x9, GPIO_BASE

	// Atención: se utilizan registros w porque la documentación de broadcom
	// indica que los registros que estamos leyendo y escribiendo son de 32 bits

	// Setea gpios 0 - 9 como lectura
	str wzr, [x9, GPIO_GPFSEL0]

	// Lee el estado de los GPIO 0 - 31
	ldr w10, [x9, GPIO_GPLEV0]

	ldr x9, [sp, #8]					 			
	add sp, sp, #8

	// And bit a bit mantiene el resultado del bit 2 en w10 (notar 0b... es binario)
	// al inmediato se lo refiere como "máscara" en este caso:
	// - Al hacer AND revela el estado del bit 2
	// - Al hacer OR "setea" el bit 2 en 1
	// - Al hacer AND con el complemento "limpia" el bit 2 (setea el bit 2 en 0)
		
	and w11, w10, 0b00000010
	and w12, w10, 0b00000100
	and w13, w10, 0b00001000
	and w14, w10, 0b00010000
	and w15, w10, 0b00100000

	// si w11 es 0 entonces el GPIO 1 estaba liberado
	// de lo contrario será distinto de 0, (en este caso particular 2)
	// significando que el GPIO 1 fue presionado
    
   	cmp w11, key_W			
	b.eq mov_up

	cmp w12, key_A			
	b.eq mov_lft

	cmp w13, key_S			
    b.eq mov_down

	cmp w14, key_D			
	b.eq mov_rgt
    
    ret 

mov_up:
    sub x4, x4, #5
    ret

mov_lft:
    sub x3, x3, #5
    ret

mov_down:
    add x4, x4, #5
    ret

mov_rgt:
    add x3, x3, #5
    ret
