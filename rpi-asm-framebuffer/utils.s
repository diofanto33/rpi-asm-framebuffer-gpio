.ifndef utils_s
.equ utils_s, 0

.include "data.s"


/*
  La funcion module_x computa el resto de la division
  entre x3 y 640 usando la formula mod(a, b) = a -b*(a/b)  
  donde (a/b) es la division piso

  - Input: x3 <- Eje x 
  - Registros temporales x1 y x5
  - Output: x3 := mod(x3, 640)
*/

module_x:
    sub sp, sp, #24
    str x5, [sp, #16]
    str x1, [sp, #8]
    str x30, [sp]

    mov x1, #640
    add x3, x3, x1
    udiv x5, x3, x1
    msub x3, x5, x1, x3
    bl end_module_x

end_module_x:
    ldr x5, [sp, #16]
    ldr x1, [sp, #8]
    ldr x30, [sp]
    add sp, sp, #24
    br x30

/*
  La funcion module_y computa el resto de la division
  entre x4 y 480 usando la formula mod(a, b) = a -b*(a/b)  
  donde (a/b) es la division piso

  - Input: x4 <- Eje y 
  - Registros temporales x1 y x5
  - Output: x4 := mod(x4, 480)
*/

module_y:
    sub sp, sp, #24
    str x5, [sp, #16]
    str x1, [sp, #8]
    str x30, [sp]

    mov x1, #480
    add x4, x4, x1            
    udiv x5, x4, x1           
    msub x4, x5, x1, x4        
    bl end_module_y

end_module_y:
    ldr x5, [sp, #16]
    ldr x1, [sp, #8]
    ldr x30, [sp]
    add sp, sp, #24
    br x30

/*
  El proc map pone en x0 la dir de memoria del px (x, y).
  Antes de hacer el mapeo, calcula el mod(x3, 640) y 
  mod(x4, 480) por medio de las fun module_x y module_y 
  respectivamente, esto define el arreglo como una matriz 
  Toroidal 

  - Inputs (x3, x4)
  - Usa y modifica los registros x21 y x15
  - No modifica x3 y x4
  - Output x0 apunta al px (x3, x4) del main FrameBuffer
  - Usa module_x, module_y
*/


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

    bl module_x
    bl module_y

    mov x21, #4               
    ldr x0, =bufferSecundario
//	mov x0, x20
    mov x26, 2560              
    madd x0, x26, x4, x0 	    
    madd x0, x21, x3, x0     

    ldr x30, [sp]
    add sp, sp, #8
    br x30

/*
    @brief: 
    draw a square in the frame buffer with the color in x10
    address base (x3, x4) in lower left corner.
			
    @param: x3, x4: coordinates of the pixel to map
    @param: x5: height and width of the square, does not modify it 
    @param: w24: color of the square
    @save_stack: x3, x4, x6, x7, x30 
*/	

draw_square:
    sub sp, sp, #40
    str x7, [sp, #32]
    str x6, [sp, #24]
    str x4, [sp, #16]
    str x3, [sp, #8]
    str x30, [sp]
	
    bl map
    mov x6, x5		  	// height
draw_square_loop1:
    mov x7, x5     		// width
draw_square_loop2:
    stur w24, [x0]
    add x0, x0, #4
    sub x7, x7, #1 
    cbnz x7, draw_square_loop2
    sub x4, x4, #1
    bl map 
    sub x6, x6, #1 
    cbnz x6, draw_square_loop1
	
    ldr x7, [sp, #32]
    ldr x6, [sp, #24]
    ldr x4, [sp, #16]
    ldr x3, [sp, #8]
    ldr x30, [sp]
    add sp, sp, #40
    br x30

/* 
  El proc doDelay hace un gran loop para crear delay, 
  el tiempo de delay depende de la constante delay.
  
  - Input: delay <- La constante delay se define en datos.s
  - Usa sin salvar el registro x9
*/

doDelay:
    ldr x19, delay
loop_doDelay:
    subs x19, x19, 1
    b.ne loop_doDelay    
    br x30 

/* pintarCirculo
    Parámetros:
        x0 = Dirección base del arreglo
        w18 = Color
        x3 = Coordenada del centro en x
        x4 = Coordenada del centro en y
        x5 = Radio

    Utiliza x8, x21, x22, x23, x24, x25, x26 
    y los registros utilizados por pintarPixel (x9).
    No modifica ningún parámetro.
 */
/* Funciona recorriendo el cuadrado mínimo que contiene al círculo, 
   y en cada pixel decidiendo si pintar o no.
   La forma usual de saber si un punto (x, y) está en el circulo centrado
   en (x1, y1) de radio r es
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
    // Guardo el puntero de retorno en el stack
    sub sp, sp, #8
    stur lr, [sp]
        
    // Guardo en x25 la condenada del centro en x
    mov x25, x3
        
    // Guardo en x26 la condenada del centro en y
    mov x26, x4
        
    // Guardo en x8 la posición final en x
    add x8, x3, x5
        
    // Guardo en x21 la posición final en y
    add x21, x4, x5
        
    // x22 = r^2 // para comparaciones en el loop
    mul x22, x5, x5
        
    // Pongo en x3 la posición inicial en x
    sub x3, x3, x5 

// loop para avanzar en x
loop0_pintarCirculo:
    cmp x3, x8
    b.gt end_loop0_pintarCirculo
    sub x4, x21, x5
        
    // Pongo en x4 la posición inicial en y
    sub x4, x4, x5

// loop para avanzar en y
loop1_pintarCirculo: 
    cmp x4, x21
    // Veo si tengo que pintar el pixel actual
    b.gt end_loop1_pintarCirculo
        
    // x23 = distancia en x desde el pixel actual al centro
    sub x23, x3, x25
        
    // x23 = w23 * w23 
    // Si los valores iniciales estaban en el rango permitido,
    // x23 = w23 (sumll es producto signado)
    smull x23, w23, w23
        
    // x24 = distancia en y desde el pixel actual al centro
    sub x24, x4, x26
        
    // x23 = x24*x24 + x23
    // x23 = cuadrado de la distancia entre el centro y el pixel actual
    smaddl x23, w24, w24, x23
    cmp x23, x22
    b.gt fi_pintarCirculo
        
    // Pinto el pixel actual
    bl map 
    stur w18, [x0]

fi_pintarCirculo:
    add x4, x4, #1
    b loop1_pintarCirculo

end_loop1_pintarCirculo:
    add x3, x3, #1
    b loop0_pintarCirculo

end_loop0_pintarCirculo:
        
    // Restauro en x3 la condenada del centro en x
    mov x3, x25
        
    // Restauro en x4 la condenada del centro en y
    mov x4, x26
        
    // Recupero el puntero de retorno del stack
    ldur lr, [sp] 
    add sp, sp, #8 
        
    // return
    br lr 

.endif
