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


.endif
