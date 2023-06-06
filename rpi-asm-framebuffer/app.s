
.include "utils.s" 
.include "data.s"
.include "bg_sea.s"
.include "plane.s"

.globl main

main:
	mov x20, x0
   
	bl draw_bg
	mov x5, xzr
	bl draw_sea
    
    mov x3, #100 
    mov x4, #100 
    mov x5, #4
    bl airplane
    
    bl propeller_frame_1

    mov x3, #300
    mov x4, #100 
    mov x5, #4
    bl airplane
    bl propeller_frame_2



InfLoop:
    b InfLoop
