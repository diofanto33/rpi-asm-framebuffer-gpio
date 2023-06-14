.ifndef bg_sea_s
.equ bg_sea_s, 0x0000

.include "data.s"
.include "utils.s"

/*
    @brief:
    draw a chunk of ~ 32x32 pixels in the frame buffer with the color in w24
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
    sub sp, sp, #40
    str x18, [sp, #32]
    str x5, [sp, #24]
    str x4, [sp, #16]
    str x3, [sp, #8]
    str lr, [sp]

    ldr w24, bluecolorbg2
	ldr x0, =bufferSecundario

	mov x3, #0
	mov x4, #0
	mov x8, #640
	mov x9, #480
	bl map
	bl draw_rectangle

    ldr w24, sand1_color
    mov x3, #460
    mov x4, #0
    mov x8, #640
    mov x9, #480
    bl map
    bl draw_rectangle

    ldr w24, sand0_color
    mov x3, #490
    mov x4, #0
    mov x8, #640
    mov x9, #480
    bl map
    bl draw_rectangle

    ldr w24, grass_color
    mov x3, #550
    mov x4, #0
    mov x8, #640
    mov x9, #480
    bl map
    bl draw_rectangle

    ldr x18, [sp, #32]
    ldr x5, [sp, #24]
    ldr x4, [sp, #16]
    ldr x3, [sp, #8]
    ldr lr, [sp]
    add sp, sp, #40
    br lr

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
	
	mov x3, #0
	mov x4, x28
	mov x1, #15 // en 14 funciona bien

sea_loop1:
	mov x2, #15
sea_loop2:
    ldr w24, bluecolorbg1
	bl draw_chunk_bg
	add x3, x3, #30
	sub x2, x2, #1 
	cbnz x2, sea_loop2
	mov x3, #0
	add x4, x4, #32
	sub x1, x1, #1 
	cbnz x1, sea_loop1

    ldr x4, [sp, #16]
    ldr x3, [sp, #8]
	ldr x30, [sp]
	add sp, sp, #24
	br x30

draw_grass:
	sub sp, sp, #24
    str x4, [sp, #16]
    str x3, [sp, #8]
	str x30, [sp]

	mov x3, #485
	mov x4, x28
	mov x1, #15 // en 14 funciona bien

grass_loop1:
	mov x2, #2
grass_loop2:
    ldr w24, sand0_color
	bl draw_chunk_bg
	add x3, x3, #30
	sub x2, x2, #1
	cbnz x2, grass_loop2
	mov x3, #485
	add x4, x4, #32
	sub x1, x1, #1
	cbnz x1, grass_loop1

    ldr x4, [sp, #16]
    ldr x3, [sp, #8]
	ldr x30, [sp]
	add sp, sp, #24
	br x30

.endif

