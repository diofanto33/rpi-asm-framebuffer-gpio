.ifndef utils_s
.equ utils_s, 0

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

/*
	@brief 
	@param x3, x4: coordinates of the pixel to map
*/
draw_square:
	sub sp, sp, #40
	str x6, [sp, #32]
	str x5, [sp, #24]
	str x4, [sp, #16]
	str x3, [sp, #8]
	str x30, [sp]
	
	bl map
	mov x5, #50		// heigh
draw_square_loop1:
	mov x6, #50     // width
draw_square_loop2:
	stur w10, [x0]
	add x0, x0, #4
	sub x6, x6, #1 
	cbnz x6, draw_square_loop2
	sub x4, x4, #1
	bl map 
	sub x5, x5, #1 
	cbnz x5, draw_square_loop1
	
	ldr x6, [sp, #32]
	ldr x5, [sp, #24]
	ldr x4, [sp, #16]
	ldr x3, [sp, #8]
	ldr x30, [sp]
	add sp, sp, #40
	br x30
	

.endif
