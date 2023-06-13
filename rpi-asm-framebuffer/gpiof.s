.ifndef GPIO_FUNC_S
.equ GPIO_FUNC_S, 0x0000

.include "data.s"

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

    cmp w15, key_SPACE
    b.eq mov_z
    
    ret 

mov_up:
    sub x4, x4, #3
    ret

mov_lft:
    sub x3, x3, #3
    ret

mov_down:
    add x4, x4, #3
    ret

mov_rgt:
    add x3, x3, #3
    ret

mov_z:
    cmp x5, #5
    b.eq sub_z
    b add_z
add_z:
    mov x5, #5
    ret
sub_z:
    mov x5, #3
    ret

.endif
