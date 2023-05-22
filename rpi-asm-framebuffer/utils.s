.ifndef tools_s
.equ tools_s, 0


/*
	@brief 
	The proc map put in x0 the address of the pixel in coordinates (x3, x4)
	@param x3, x4: coordinates of the pixel to map
	@param x20: address base of frame buffer
	@output x0: address of the pixel in coordinates (x3, x4)
*/

map:
    sub sp, sp, #8    
    str x30, [sp]

    mov x21, #4               
    mov x0, x20               
    mov x15, 2560              
    madd x0, x15, x4, x0 	    
    madd x0, x21, x3, x0     

    ldr x30, [sp]
    add sp, sp, #8
    br x30


/* pintarCirculo
    Parámetros:
        x0 = Dirección base del arreglo
        w1 = Color
        x2 = Coordenada del centro en x
        x3 = Coordenada del centro en y
        x4 = Radio

    Utiliza x9, x10, x11, x12, x13, x14, x15, x16 y los registros utilizados por pintarPixel (x9).
    No modifica ningún parámetro.
 */
/* Funciona recorriendo el cuadrado mínimo que contiene al círculo, y en cada pixel decidiendo si pintar o no.
    La forma usual de saber si un punto (x, y) está en el circulo centrado en (x1, y1) de radio r es
    ver si la norma de la distancia entre el punto y el centro es menor que r.
    En formulas:
        ||(x, y) - (x1, y1)|| <= r
    Aplicando la definición de norma:
        sqrt((x - x1)^2 + (y - y1)^2) <= r
    Esto es equivalente a:
        (x - x1)^2 + (y - y1)^2 <= r^2

    Para hacer menos cálculos uso esta última formula.
 */
pintarCirculo:
	sub sp, sp, #8 // Guardo el puntero de retorno en el stack
    stur lr, [sp]

    mov x15, x2 // Guardo en x15 la condenada del centro en x
    mov x16, x3 // Guardo en x16 la condenada del centro en y
    add x10, x2, x4 // Guardo en x10 la posición final en x
    add x11, x3, x4 // Guardo en x11 la posición final en y
    mul x12, x4, x4 // x12 = r^2 // para comparaciones en el loop
    sub x2, x2, x4 // Pongo en x2 la posición inicial en x

loop0_pintarCirculo: // loop para avanzar en x
    cmp x2, x10
    b.gt end_loop0_pintarCirculo
    sub x3, x11, x4
    sub x3, x3, x4 // Pongo en x3 la posición inicial en y

loop1_pintarCirculo: // loop para avanzar en y
    cmp x3, x11
    b.gt end_loop1_pintarCirculo // Veo si tengo que pintar el pixel actual
    sub x13, x2, x15 // x13 = distancia en x desde el pixel actual al centro
    smull x13, w13, w13 // x13 = w13 * w13 // Si los valores iniciales estaban en el rango permitido, x13 = w13 (sumll es producto signado)
    sub x14, x3, x16 // x14 = distancia en y desde el pixel actual al centro
    smaddl x13, w14, w14, x13 // x13 = x14*x14 + x13 // x13 = cuadrado de la distancia entre el centro y el pixel actual
    cmp x13, x12
    b.gt fi_pintarCirculo 
    bl pintarPixel // Pinto el pixel actual

fi_pintarCirculo:
    add x3, x3, #1
    b loop1_pintarCirculo

end_loop1_pintarCirculo:
    add x2, x2, #1
    b loop0_pintarCirculo

end_loop0_pintarCirculo:
    mov x2, x15 // Restauro en x2 la condenada del centro en x
    mov x3, x16 // Restauro en x3 la condenada del centro en y
    ldur lr, [sp] // Recupero el puntero de retorno del stack
    add sp, sp, #8 

    br lr // return


.endif
