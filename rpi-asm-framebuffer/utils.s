.ifndef utils_s
.equ utils_s, 0

.include "data.s"

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

/* hitbox */ 


.endif
