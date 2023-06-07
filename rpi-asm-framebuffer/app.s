.include "utils.s" 
.include "data.s"
.include "bg_sea.s"
.include "plane.s"

.globl main

main:
	mov x20, x0
   
init_loop:
    bl draw_bg

// 	bl draw_sea
    
    mov x3, #100 
    mov x4, #100 
    bl airplane
    bl propeller_frame_1
    bl doDelay

    bl draw_bg
//  bl draw_sea

    mov x3, #100 
    mov x4, #100 
    bl airplane
    bl propeller_frame_2
    bl doDelay
    b init_loop


InfLoop:
    b InfLoop
