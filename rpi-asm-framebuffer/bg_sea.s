.ifndef bg_sea_s
.equ bg_sea_s, 0x0000

.include "data.s"
.include "utils.s"

/*
    @brief:
    draw a chunk of ~ 33x33 pixels in the frame buffer with the color in w24 
    of a aleatory pattern pixel by pixel.

    @param: 
    x3: x coordinate of the chunk
    x4: y coordinate of the chunk
    w24: color of the chunk 
    
    @return: none 

    @note: 
    - initial address of the chunk in down left corner (x3, x4) 
	- Use map function to draw a pixel 
    - Use bluecolorbg1 to draw the chunk

    @saveStack: x4, x3, x30
*/

draw_chunk_bg:
	sub sp, sp, #24
	str x4, [sp, #16]
	str x3, [sp, #8]
	str x30, [sp]

	ldr w24, bluecolorbg1
	
	add x3, x3, #18
	bl map
	str w24, [x0]
	add x3, x3, #1
	bl map
	str w24, [x0]

	sub x3, x3, #18
	sub x4, x4, #1 
	
	add x3, x3, #2 
	bl map 
	str w24, [x0]

	add x3, x3, #2 
	bl map
	str w24, [x0]
	
	add x3, x3, #9
	bl map 
	str w24, [x0]
	add x3, x3, #1 
	bl map 
	str w24, [x0]

	add x3, x3, #7
	bl map 
	str w24, [x0]

	sub x3, x3, #19
	sub x4, x4, #1 
	bl map 
	str w24, [x0]

	add x3, x3, #1 
	bl map 
	str w24, [x0]

	add x3, x3, #6
	bl map 
	str w24, [x0]

	add x3, x3, #9 
	bl map 
	str w24, [x0]

	add x3, x3, #1 
	bl map 
	str w24, [x0]

	add x3, x3, #5
	bl map 
	str w24, [x0]

	add x3, x3, #1 
	bl map 
	str w24, [x0]

	add x3, x3, #1 
	bl map 
	str w24, [x0]

	add x3, x3, #4 
	bl map 
	str w24, [x0]

	sub x3, x3, #25 
	sub x4, x4, #1 
	bl map 
	str w24, [x0]

	add x3, x3, #1 
	bl map 
	str w24, [x0]

	add x3, x3, #8
	bl map 
	str w24, [x0]

	sub x3, x3, #8
	sub x4, x4, #1 
	bl map 
	str w24, [x0]
	
	add x3, x3, #1 
	bl map 
	str w24, [x0]
	
	add x3, x3, #4
	bl map 
	str w24, [x0]

	add x3, x3, #19
	bl map 
	str w24, [x0]

	sub x3, x3, #24
	sub x4, x4, #1 
	bl map 
	str w24, [x0]

	add x3, x3, #1 
	bl map 
	str w24, [x0]

	add x3, x3, #10 
	bl map 
	str w24, [x0]

	add x3, x3, #4
	bl map 
	str w24, [x0]

	add x3, x3, #1 
	bl map 
	str w24, [x0]

	add x3, x3, #7 
	bl map 
	str w24, [x0]

	add x3, x3, #1 
	bl map 
	str w24, [x0]

	sub x4, x4, #1 
	bl map 
	str w24, [x0]

	sub x3, x3, #2 
	bl map 
	str w24, [x0]

	sub x3, x3, #7
	bl map 
	str w24, [x0]

	sub x3, x3, #1 
	bl map 
	str w24, [x0]

	sub x3, x3, #6
	bl map 
	str w24, [x0]

	sub x3, x3, #1 
	bl map 
	str w24, [x0]

	sub x3, x3, #4 
	bl map 
	str w24, [x0]

	sub x3, x3, #1 
	bl map 
	str w24, [x0]

	sub x3, x3, #1 
	bl map 
	str w24, [x0]

	sub x3, x3, #5
	bl map 
	str w24, [x0]

	sub x4, x4, #1 
	add x3, x3, #6
	bl map 
	str w24, [x0]
	
	add x3, x3, #1 
	bl map 
	str w24, [x0]
	
	add x3, x3, #10 
	bl map 
	str w24, [x0]
	
	add x3, x3, #1 
	bl map 
	str w24, [x0]
	
	add x3, x3, #1 
	bl map 
	str w24, [x0]
	
	sub x3, x3, #2 
	sub x4, x4, #1 
	bl map 
	str w24, [x0]
	
	add x3, x3, #1 
	bl map 
	str w24, [x0]
	
	add x3, x3, #4 
	bl map 
	str w24, [x0]
	
	add x3, x3, #1 
	bl map 
	str w24, [x0]

	add x3, x3, #4 
	bl map 
	str w24, [x0]
	
	sub x3, x3, #4 
	sub x4, x4, #1 
	bl map 
	str w24, [x0]
	
	sub x3, x3, #24 
	bl map 
	str w24, [x0]
	
	sub x4, x4, #1 
	add x3, x3, #1 
	bl map 
	str w24, [x0]
	
	add x3, x3, #1 
	bl map 
	str w24, [x0]

	add x3, x3, #8 
	bl map
	str w24, [x0]
	
	add x3, x3, #2 
	bl map 
	str w24, [x0]
	
	add x3, x3, #1 
	bl map 
	str w24, [x0]
	
	sub x3, x3, #7
	sub x4, x4, #1 
	bl map
	str w24, [x0]

	sub x3, x3, #5
	bl map 
	str w24, [x0]
	
	sub x3, x3, #1 
	bl map 
	str w24, [x0]
	
	add x3, x3, #14
	sub x4, x4, #1 
	bl map 
	str w24, [x0]
	
	add x3, x3, #5
	bl map 
	str w24, [x0]
	
	add x3, x3, #7
	sub x4, x4, #1 
	bl map 
	str w24, [x0]
	
	sub x3, x3, #1 
	bl map 
	str w24, [x0]
	
	sub x3, x3, #6
	bl map 
	str w24, [x0]
	
	sub x3, x3, #1
	bl map 
	str w24, [x0]
	
	sub x3, x3, #2 
	bl map 
	str w24, [x0]

	sub x3, x3, #13 
	bl map 
	str w24, [x0]
	
	add x3, x3, #4
	sub x4, x4, #1 
	bl map 
	str w24, [x0]
	
	add x3, x3, #1 
	bl map 
	str w24, [x0]

	add x3, x3, #1 
	bl map 
	str w24, [x0]

	add x3, x3, #10 
	bl map 
	str w24, [x0]

	add x3, x3, #2 
	bl map 
	str w24, [x0]
	
	add x3, x3, #5 
	bl map 
	str w24, [x0]
	
	add x3, x3, #1 
	sub x4, x4, #1 
	bl map 
	str w24, [x0]
	
	sub x3, x3, #1 
	bl map 
	str w24, [x0]
	
	sub x3, x3, #1 
	bl map 
	str w24, [x0]
	
	sub x3, x3, #13 
	bl map 
	str w24, [x0]
	
	sub x3, x3, #1 
	bl map 
	str w24, [x0]

	sub x3, x3, #10 
	sub x4, x4, #1 
	bl map 
	str w24, [x0]
	
	add x3, x3, #1 
	bl map 
	str w24, [x0]

	add x3, x3, #7
	bl map 
	str w24, [x0]

	add x3, x3, #2 
	bl map 
	str w24, [x0]
	
	add x3, x3, #1 
	bl map
	str w24, [x0]
	
	add x3, x3, #14 
	bl map 
	str w24, [x0]
	
	add x3, x3, #1 
	bl map 
	str w24, [x0]
	
	sub x4, x4, #1 
	sub x3, x3, #5 
	bl map 
	str w24, [x0]

	sub x3, x3, #10 
	bl map 
	str w24, [x0]

	sub x3, x3, #2 
	bl map 
	str w24, [x0]

	sub x3, x3, #8 
	bl map 
	str w24, [x0]

	add x3, x3, #1 
	sub x4, x4, #1 
	bl map 
	str w24, [x0]

	add x3, x3, #1 
	bl map 
	str w24, [x0]

	add x3, x3, #6 
	bl map 
	str w24, [x0]

	add x3, x3, #7 
	bl map 
	str w24, [x0]

	add x3, x3, #1 
	bl map 
	str w24, [x0]
	
	add x3, x3, #10 
	sub x4, x4, #1 
	bl map 
	str w24, [x0]

	sub x3, x3, #3 
	bl map 
	str w24, [x0]

	sub x3, x3, #8 
	bl map 
	str w24, [x0]

	sub x3, x3, #1 
	bl map 
	str w24, [x0]

	sub x3, x3, #12
	bl map 
	str w24, [x0]

	sub x3, x3, #1 
	bl map 
	str w24, [x0]

	sub x4, x4, #1 
	bl map 
	str w24, [x0]

	add x3, x3, #1 
	bl map 
	str w24, [x0]

	add x3, x3, #10 
	bl map 
	str w24, [x0]

	add x3, x3, #1 
	bl map 
	str w24, [x0]

	add x3,x3, #1 
	bl map 
	str w24, [x0]

	add x3, x3, #1 
	bl map
	str w24, [x0]

	add x3, x3, #3 
	bl map 
	str w24, [x0]

	add x3, x3, #5 
	sub x4, x4, #1 
	bl map 
	str w24, [x0]
	
	sub x3, x3, #19 
	sub x4, x4, #1 
	bl map 
	str w24, [x0]

	sub x3, x3, #6 
	bl map 
	str w24, [x0]

	sub x3, x3, #1 
	bl map 
	str w24, [x0]

	sub x4, x4, #1 
	add x3, x3, #1 
	bl map 
	str w24, [x0]

	add x3, x3, #1
	bl map 
	str w24, [x0]

	add x3, x3, #5 
	bl map 
	str w24, [x0]

	add x3, x3, #13 
	bl map 
	str w24, [x0]

	add x3, x3, #8 
	bl map 
	str w24, [x0]

	add x3, x3, #1 
	sub x4, x4, #1 
	bl map 
	str w24, [x0]

	sub x3, x3, #1 
	bl map 
	str w24, [x0]

	sub x3, x3, #8 
	bl map 
	str w24, [x0]

	sub x3, x3, #9 
	bl map 
	str w24, [x0]

	sub x3, x3, #1 
	bl map 
	str w24, [x0]

	sub x3, x3, #4 
	sub x4, x4, #1 
	bl map 
	str w24, [x0]

	add x3, x3, #5 
	bl map 
	str w24, [x0]

	add x3, x3, #2 
	bl map 
	str w24, [x0]

	add x3, x3, #5 
	bl map 
	str w24, [x0]

	add x3, x3, #5 
	bl map 
	str w24, [x0]

	sub x3, x3, #10 
	sub x4, x4, #1 
	bl map 
	str w24, [x0]

	sub x3, x3, #2 
	bl map 
	str w24, [x0]

	sub x3, x3, #2
	bl map 
	str w24, [x0]

	sub x3, x3, #3 
	bl map 
	str w24, [x0]

	sub x3, x3, #5 
	bl map 
	str w24, [x0]

	sub x3, x3, #1 
	bl map 
	str w24, [x0]

	sub x4, x4, #1 
	add x3, x3, #1 
	bl map 
	str w24, [x0]

	add x3, x3, #1
	bl map
	str w24, [x0]
	
	add x3, x3, #21 
	bl map 
	str w24, [x0]

	add x3, x3, #1 
	bl map 
	str w24, [x0]

	add x3, x3, #3 
	bl map 
	str w24, [x0]

	add x3, x3, #1 
	sub x4, x4, #1 
	bl map 
	str w24, [x0]

	sub x3, x3, #4 
	bl map 
	str w24, [x0]

	sub x3, x3, #1 
	bl map 
	str w24, [x0]

	sub x3, x3, #5 
	bl map 
	str w24, [x0]

	sub x3, x3, #1 
	bl map 
	str w24, [x0]

	sub x3, x3, #15 
	bl map 
	str w24, [x0]

	sub x3, x3, #1 
	bl map 
	str w24, [x0]

	sub x4, x4, #1 
	add x3, x3, #1 
	bl map 
	str w24, [x0]

	add x3, x3, #1 
	bl map 
	str w24, [x0]

	add x3, x3, #1 
	bl map 
	str w24, [x0]

	add x3, x3, #14 
	bl map 
	str w24, [x0]

	add x3, x3, #3 
	bl map 
	str w24, [x0]
	
	add x3, x3, #1 
	bl map 
	str w24, [x0]

	add x3, x3, #1 
	bl map 
	str w24, [x0]

	add x3, x3, #1 
	bl map 
	str w24, [x0]

	add x3, x3, #5 
	sub x4, x4, #1 
	bl map 
	str w24, [x0]

	sub x3, x3, #18
	bl map 
	str w24, [x0]

	sub x3, x3, #1 
	bl map 
	str w24, [x0]

	sub x3, x3, #6
	bl map 
	str w24, [x0]

	sub x3, x3, #1 
	bl map 
	str w24, [x0]

	add x3, x3, #6 
	sub x4, x4, #1 
	bl map 
	str w24, [x0]

	add x3, x3, #1 
	bl map 
	str w24, [x0]

	add x3, x3, #1 
	bl map 
	str w24, [x0]
	
	add x3, x3, #1 
	bl map 
	str w24, [x0]

	ldr x4, [sp, #16]
	ldr x3, [sp, #8]
	ldr x30, [sp]
	add sp, sp, #24
	br x30 


/*
	@brief: draws ALL framebuffer with a color (blue) bluecolorbg2

	@param:	none

	@return: none

	@saveStack: x1, x2, x30

    @color: w24
*/

draw_bg:
	ldr w24, bluecolorbg2
	ldr x0, =bufferSecundario
//	mov x0, x20
	mov x2, SCREEN_HEIGH    // Y Size
draw_bg_loop1:
	mov x1, SCREEN_WIDTH    // X Size
draw_bg_loop0:
	stur w24, [x0]  			// Colorear el pixel N
	add x0, x0, #4    			// Siguiente pixel
	sub x1, x1, #1    			// Decrementar contador X
	cbnz x1, draw_bg_loop0  // Si no terminó la fila, salto
	sub x2, x2, #1    			// Decrementar contador Y
	cbnz x2, draw_bg_loop1  // Si no es la última fila, salto	
	br x30 

/*
	@brief: draw the pattern of the sea in the framebuffer
	
    @return: none

    @saveStack: x1, x2, x3, x4, x30

    @note: use draw_chunk_bg

    @ERROR: 
    the size of the pattern is not exact, consequently a part 
    is overpainted. In consequence, we paint the ocean centered, 
    leaving a blue frame
*/

draw_sea:
	sub sp, sp, #24
    str x4, [sp, #16]
    str x3, [sp, #8]
	str x30, [sp]
	
	mov x3, #8
	mov x4, #45
	mov x1, #14    // en 14 funciona bien

sea_loop1:
	mov x2, #20     
sea_loop2:
	bl draw_chunk_bg
	add x3, x3, #31
	sub x2, x2, #1 
	cbnz x2, sea_loop2
	mov x3, #10 
	add x4, x4, #32
	sub x1, x1, #1 
	cbnz x1, sea_loop1

    ldr x4, [sp, #16]
    ldr x3, [sp, #8]
	ldr x30, [sp]
	add sp, sp, #24
	br x30

.endif
