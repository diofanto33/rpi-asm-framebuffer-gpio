.ifndef GPIO_FUNC_S
.equ GPIO_FUNC_S, 0x0000

.include "data.s"

gpio_func: 
    sub sp, sp, #40
    str x15, [sp, #32]
    str x14, [sp, #24]
    str x13, [sp, #16]
    str x12, [sp, #8]
    str x11, [sp]

    sub sp, sp, #16
    str x10, [sp, #8]
    str x9, [sp]

    // Seteamos el GPIO para poder realizar la lectura de los inputs
    mov x9, GPIO_BASE

    // Atención: se utilizan registros w porque la documentación de broadcom
    // indica que los registros que estamos leyendo y escribiendo son de 32 bits

    // Setea gpios 0 - 9 como lectura
    str wzr, [x9, GPIO_GPFSEL0]

    // Lee el estado de los GPIO 0 - 31
    ldr w10, [x9, GPIO_GPLEV0]



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

    ldr x10, [sp, #8]
    ldr x9, [sp]
    add sp, sp, #16

    // si w11 es 0 entonces el GPIO 1 estaba liberado
    // de lo contrario será distinto de 0, (en este caso particular 2)
    // significando que el GPIO 1 fue presionado

    cmp w15, key_SPACE
    b.eq mov_z
    ret

mov_z:
    ldr w25, red0_color
    cmp w24, w25
    b.eq draw_sea_s
    b draw_lava
draw_sea_s:
    ldr w25, bluecolorbg1
    ldr w24, blue_color
    b end_mov_z
draw_lava:
    ldr w25, sand1_color
    ldr w24, red0_color
    b end_mov_z
end_mov_z:
    ldr x15, [sp, #32]
    ldr x14, [sp, #24]
    ldr x13, [sp, #16]
    ldr x12, [sp, #8]
    ldr x11, [sp]
    add sp, sp, #40
    ret

.endif
