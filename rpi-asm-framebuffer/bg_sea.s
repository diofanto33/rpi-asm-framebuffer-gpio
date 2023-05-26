.ifndef bg_sea_s
.equ bg_sea_s, 0x0000

.include "data.s"
.include "utils.s"

/*
	@brief:
		draw a chunk of 33x33 pixels in the frame buffer with the color in x10
*/

draw_chunk_bg:
	sub sp, sp, #24
	str x4, [sp, #16]
	str x3, [sp, #8]
	str x30, [sp]

	ldr w10, bluecolorbg1
	
	add x3, x3, #18
	bl map
	str w10, [x0]
	add x0, x0, #4
	str w10, [x0]

	sub x3, x3, #18
	sub x4, x4, #1 
	
	add x3, x3, #2 
	bl map 
	str w10, [x0]

	add x3, x3, #2 
	bl map
	str w10, [x0]
	
	add x3, x3, #9
	bl map 
	str w10, [x0]
	add x0, x0, #4
	str w10, [x0]

	add x3, x3, #7
	bl map 
	str w10, [x0]

	sub x3, x3, #19
	sub x4, x4, #1 
	bl map 
	str w10, [x0]

	add x3, x3, #1 
	bl map 
	str w10, [x0]

	add x3, x3, #6
	bl map 
	str w10, [x0]

	add x3, x3, #9 
	bl map 
	str w10, [x0]

	add x3, x3, #1 
	bl map 
	str w10, [x0]

	add x3, x3, #5
	bl map 
	str w10, [x0]

	add x3, x3, #1 
	bl map 
	str w10, [x0]

	add x3, x3, #1 
	bl map 
	str w10, [x0]

	add x3, x3, #4 
	bl map 
	str w10, [x0]

	sub x3, x3, #25 
	sub x4, x4, #1 
	bl map 
	str w10, [x0]

	add x3, x3, #1 
	bl map 
	str w10, [x0]

	add x3, x3, #8
	bl map 
	str w10, [x0]

	sub x3, x3, #8
	sub x4, x4, #1 
	bl map 
	str w10, [x0]
	
	add x3, x3, #1 
	bl map 
	str w10, [x0]
	
	add x3, x3, #4
	bl map 
	str w10, [x0]

	add x3, x3, #19
	bl map 
	str w10, [x0]

	sub x3, x3, #24
	sub x4, x4, #1 
	bl map 
	str w10, [x0]

	add x3, x3, #1 
	bl map 
	str w10, [x0]

	add x3, x3, #10 
	bl map 
	str w10, [x0]

	add x3, x3, #4
	bl map 
	str w10, [x0]

	add x3, x3, #1 
	bl map 
	str w10, [x0]

	add x3, x3, #7 
	bl map 
	str w10, [x0]

	add x3, x3, #1 
	bl map 
	str w10, [x0]

	sub x4, x4, #1 
	bl map 
	str w10, [x0]

	sub x3, x3, #2 
	bl map 
	str w10, [x0]

	sub x3, x3, #7
	bl map 
	str w10, [x0]

	sub x3, x3, #1 
	bl map 
	str w10, [x0]

	sub x3, x3, #6
	bl map 
	str w10, [x0]

	sub x3, x3, #1 
	bl map 
	str w10, [x0]

	sub x3, x3, #4 
	bl map 
	str w10, [x0]

	sub x3, x3, #1 
	bl map 
	str w10, [x0]

	sub x3, x3, #1 
	bl map 
	str w10, [x0]

	sub x3, x3, #5
	bl map 
	str w10, [x0]

	sub x4, x4, #1 
	add x3, x3, #6
	bl map 
	str w10, [x0]
	
	add x3, x3, #1 
	bl map 
	str w10, [x0]
	
	add x3, x3, #10 
	bl map 
	str w10, [x0]
	
	add x3, x3, #1 
	bl map 
	str w10, [x0]
	
	add x3, x3, #1 
	bl map 
	str w10, [x0]
	
	sub x3, x3, #2 
	sub x4, x4, #1 
	bl map 
	str w10, [x0]
	
	add x3, x3, #1 
	bl map 
	str w10, [x0]
	
	add x3, x3, #4 
	bl map 
	str w10, [x0]
	
	add x3, x3, #1 
	bl map 
	str w10, [x0]

	add x3, x3, #4 
	bl map 
	str w10, [x0]
	
	sub x3, x3, #4 
	sub x4, x4, #1 
	bl map 
	str w10, [x0]
	
	sub x3, x3, #24 
	bl map 
	str w10, [x0]
	
	sub x4, x4, #1 
	add x3, x3, #1 
	bl map 
	str w10, [x0]
	
	add x3, x3, #1 
	bl map 
	str w10, [x0]

	add x3, x3, #8 
	bl map
	str w10, [x0]
	
	add x3, x3, #2 
	bl map 
	str w10, [x0]
	
	add x3, x3, #1 
	bl map 
	str w10, [x0]
	
	sub x3, x3, #7
	sub x4, x4, #1 
	bl map
	str w10, [x0]

	sub x3, x3, #5
	bl map 
	str w10, [x0]
	
	sub x3, x3, #1 
	bl map 
	str w10, [x0]
	
	add x3, x3, #14
	sub x4, x4, #1 
	bl map 
	str w10, [x0]
	
	add x3, x3, #5
	bl map 
	str w10, [x0]
	
	add x3, x3, #7
	sub x4, x4, #1 
	bl map 
	str w10, [x0]
	
	sub x3, x3, #1 
	bl map 
	str w10, [x0]
	
	sub x3, x3, #6
	bl map 
	str w10, [x0]
	
	sub x3, x3, #1
	bl map 
	str w10, [x0]
	
	sub x3, x3, #2 
	bl map 
	str w10, [x0]

	sub x3, x3, #13 
	bl map 
	str w10, [x0]
	
	add x3, x3, #4
	sub x4, x4, #1 
	bl map 
	str w10, [x0]
	
	add x3, x3, #1 
	bl map 
	str w10, [x0]

	add x3, x3, #1 
	bl map 
	str w10, [x0]

	add x3, x3, #10 
	bl map 
	str w10, [x0]

	add x3, x3, #2 
	bl map 
	str w10, [x0]
	
	add x3, x3, #5 
	bl map 
	str w10, [x0]
	
	add x3, x3, #1 
	sub x4, x4, #1 
	bl map 
	str w10, [x0]
	
	sub x3, x3, #1 
	bl map 
	str w10, [x0]
	
	sub x3, x3, #1 
	bl map 
	str w10, [x0]
	
	sub x3, x3, #13 
	bl map 
	str w10, [x0]
	
	sub x3, x3, #1 
	bl map 
	str w10, [x0]

	sub x3, x3, #10 
	sub x4, x4, #1 
	bl map 
	str w10, [x0]
	
	add x3, x3, #1 
	bl map 
	str w10, [x0]

	add x3, x3, #7
	bl map 
	str w10, [x0]

	add x3, x3, #2 
	bl map 
	str w10, [x0]
	
	add x3, x3, #1 
	bl map
	str w10, [x0]
	
	add x3, x3, #14 
	bl map 
	str w10, [x0]
	
	add x3, x3, #1 
	bl map 
	str w10, [x0]
	
	sub x4, x4, #1 
	sub x3, x3, #5 
	bl map 
	str w10, [x0]

	sub x3, x3, #10 
	bl map 
	str w10, [x0]

	sub x3, x3, #2 
	bl map 
	str w10, [x0]

	sub x3, x3, #8 
	bl map 
	str w10, [x0]

	add x3, x3, #1 
	sub x4, x4, #1 
	bl map 
	str w10, [x0]

	add x3, x3, #1 
	bl map 
	str w10, [x0]

	add x3, x3, #6 
	bl map 
	str w10, [x0]

	add x3, x3, #7 
	bl map 
	str w10, [x0]

	add x3, x3, #1 
	bl map 
	str w10, [x0]
	
	add x3, x3, #10 
	sub x4, x4, #1 
	bl map 
	str w10, [x0]

	sub x3, x3, #3 
	bl map 
	str w10, [x0]

	sub x3, x3, #8 
	bl map 
	str w10, [x0]

	sub x3, x3, #1 
	bl map 
	str w10, [x0]

	sub x3, x3, #12
	bl map 
	str w10, [x0]

	sub x3, x3, #1 
	bl map 
	str w10, [x0]

	sub x4, x4, #1 
	bl map 
	str w10, [x0]

	add x3, x3, #1 
	bl map 
	str w10, [x0]

	add x3, x3, #10 
	bl map 
	str w10, [x0]

	add x3, x3, #1 
	bl map 
	str w10, [x0]

	add x3,x3, #1 
	bl map 
	str w10, [x0]

	add x3, x3, #1 
	bl map
	str w10, [x0]

	add x3, x3, #3 
	bl map 
	str w10, [x0]

	add x3, x3, #5 
	sub x4, x4, #1 
	bl map 
	str w10, [x0]
	
	sub x3, x3, #19 
	sub x4, x4, #1 
	bl map 
	str w10, [x0]

	sub x3, x3, #6 
	bl map 
	str w10, [x0]

	sub x3, x3, #1 
	bl map 
	str w10, [x0]

	sub x4, x4, #1 
	add x3, x3, #1 
	bl map 
	str w10, [x0]

	add x3, x3, #1
	bl map 
	str w10, [x0]

	add x3, x3, #5 
	bl map 
	str w10, [x0]

	add x3, x3, #13 
	bl map 
	str w10, [x0]

	add x3, x3, #8 
	bl map 
	str w10, [x0]

	add x3, x3, #1 
	sub x4, x4, #1 
	bl map 
	str w10, [x0]

	sub x3, x3, #1 
	bl map 
	str w10, [x0]

	sub x3, x3, #8 
	bl map 
	str w10, [x0]

	sub x3, x3, #9 
	bl map 
	str w10, [x0]

	sub x3, x3, #1 
	bl map 
	str w10, [x0]

	sub x3, x3, #4 
	sub x4, x4, #1 
	bl map 
	str w10, [x0]

	add x3, x3, #5 
	bl map 
	str w10, [x0]

	add x3, x3, #2 
	bl map 
	str w10, [x0]

	add x3, x3, #5 
	bl map 
	str w10, [x0]

	add x3, x3, #5 
	bl map 
	str w10, [x0]

	sub x3, x3, #10 
	sub x4, x4, #1 
	bl map 
	str w10, [x0]

	sub x3, x3, #2 
	bl map 
	str w10, [x0]

	sub x3, x3, #2
	bl map 
	str w10, [x0]

	sub x3, x3, #3 
	bl map 
	str w10, [x0]

	sub x3, x3, #5 
	bl map 
	str w10, [x0]

	sub x3, x3, #1 
	bl map 
	str w10, [x0]

	sub x4, x4, #1 
	add x3, x3, #1 
	bl map 
	str w10, [x0]

	add x3, x3, #1
	bl map
	str w10, [x0]
	
	add x3, x3, #21 
	bl map 
	str w10, [x0]

	add x3, x3, #1 
	bl map 
	str w10, [x0]

	add x3, x3, #3 
	bl map 
	str w10, [x0]

	add x3, x3, #1 
	sub x4, x4, #1 
	bl map 
	str w10, [x0]

	sub x3, x3, #4 
	bl map 
	str w10, [x0]

	sub x3, x3, #1 
	bl map 
	str w10, [x0]

	sub x3, x3, #5 
	bl map 
	str w10, [x0]

	sub x3, x3, #1 
	bl map 
	str w10, [x0]

	sub x3, x3, #15 
	bl map 
	str w10, [x0]

	sub x3, x3, #1 
	bl map 
	str w10, [x0]

	sub x4, x4, #1 
	add x3, x3, #1 
	bl map 
	str w10, [x0]

	add x3, x3, #1 
	bl map 
	str w10, [x0]

	add x3, x3, #1 
	bl map 
	str w10, [x0]

	add x3, x3, #14 
	bl map 
	str w10, [x0]

	add x3, x3, #3 
	bl map 
	str w10, [x0]
	
	add x3, x3, #1 
	bl map 
	str w10, [x0]

	add x3, x3, #1 
	bl map 
	str w10, [x0]

	add x3, x3, #1 
	bl map 
	str w10, [x0]

	add x3, x3, #5 
	sub x4, x4, #1 
	bl map 
	str w10, [x0]

	sub x3, x3, #18
	bl map 
	str w10, [x0]

	sub x3, x3, #1 
	bl map 
	str w10, [x0]

	sub x3, x3, #6
	bl map 
	str w10, [x0]

	sub x3, x3, #1 
	bl map 
	str w10, [x0]

	add x3, x3, #6 
	sub x4, x4, #1 
	bl map 
	str w10, [x0]

	add x3, x3, #1 
	bl map 
	str w10, [x0]

	add x3, x3, #1 
	bl map 
	str w10, [x0]
	
	add x3, x3, #1 
	bl map 
	str w10, [x0]

	ldr x4, [sp, #16]
	ldr x3, [sp, #8]
	ldr x30, [sp]
	add sp, sp, #24
	br x30 

draw_bg:
	sub sp, sp, #24
	str x2, [sp, #16]
	str x1, [sp, #8]
	str x30, [sp]
	
	ldr w10, bluecolorbg2

	mov x0, x20
	mov x2, SCREEN_HEIGH    // Y Size
draw_bg_loop1:
	mov x1, SCREEN_WIDTH    // X Size
draw_bg_loop0:
	stur w10, [x0]  			// Colorear el pixel N
	add x0, x0, #4    			// Siguiente pixel
	sub x1, x1, #1    			// Decrementar contador X
	cbnz x1, draw_bg_loop0  // Si no terminó la fila, salto
	sub x2, x2, #1    			// Decrementar contador Y
	cbnz x2, draw_bg_loop1  // Si no es la última fila, salto
	
	ldr x2, [sp, #16]
	ldr x1, [sp, #8]
	ldr x30, [sp]
	add sp, sp, #24
	br x30 


draw_sea:
	sub sp, sp, #40
	str x1, [sp, #32]
	str x2, [sp, #24]
	str x3, [sp, #16]
	str x4, [sp, #8]
	str x30, [sp]
	
	mov x3, x5 
	mov x4, #32
	mov x1, #16
sea_loop1:
	mov x2, #21 
sea_loop2:
	bl draw_chunk_bg
	add x3, x3, #31
	sub x2, x2, #1 
	cbnz x2, sea_loop2
	mov x3, x5 
	add x4, x4, #32
	sub x1, x1, #1 
	cbnz x1, sea_loop1

	ldr x1, [sp, #32]
	ldr x2, [sp, #24]
	ldr x3, [sp, #16]
	ldr x4, [sp, #8]
	ldr x30, [sp]
	add sp, sp, #40
	br x30

.endif
