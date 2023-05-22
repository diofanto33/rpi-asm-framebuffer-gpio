
.include "utils.s" 
.include "data.s"

.globl main

main:
    mov x20, x0
    
    bl squared_bg
    
    // Ejemplo de uso de gpios
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
    // si w11 es 0 entonces el GPIO 1 estaba liberado
    // de lo contrario será distinto de 0, (en este caso particular 2)
    // significando que el GPIO 1 fue presionado
	
InfLoop:
    b InfLoop
