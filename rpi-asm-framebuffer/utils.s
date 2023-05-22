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
    mov x0, x20               
    mov x15, 2560              
    madd x0, x15, x4, x0 	    
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
	@param: x10: color of the square
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
	stur w10, [x0]
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
	@brief:
	draw a squared background in the frame buffer with the color in x10 and x11
	@param: None
	@save_stack: x1, x2, x8, x10, x11, x30
*/


squared_bg:
    sub sp,sp,#48
	str x11, [sp, #40]
	str x10, [sp, #32]
	str x8, [sp, #24]
	str x2, [sp, #16]
	str x1, [sp, #8] 
	str x30, [sp]

	mov x0, x20;
    
	ldr x10, bluecolorbg1
	ldr x11, bluecolorbg2
								// x0 direciona un color
    add x8, x0, #4            	// x8 direcciona el otro color
    mov x2, SCREEN_HEIGH     	// y size
square_bg_loop1:
    mov x1, SCREEN_WIDTH     	// x size
square_bg_loop0:
	stur w10, [x0]           	// set color of pixel n
    stur w11, [x8]           	// set color of pixel n
    add x8, x8, #8            	// next + 1 pixel
    add x0, x0, #8            	// next + 1 pixel
    sub x1, x1, #2	         	// decrement x counter
    cbnz x1, square_bg_loop0	// if not end row jump
    eor x0, x0, x8           	// swap(x0,x8)
    eor x8, x0, x8
    eor x0, x0, x8
    sub x2, x2, #1            	// decrement y counter
    cbnz x2, square_bg_loop1    // if not last row, jump

	ldr x11, [sp, #40]
	ldr x10, [sp, #32]
	ldr x8, [sp, #24]
	ldr x2, [sp, #16]
	ldr x1, [sp, #8]
    ldr x30, [sp]
    add sp, sp, #48
    br x30

.endif
