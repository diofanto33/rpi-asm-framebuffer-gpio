
.include "utils.s" 
.include "data.s"
.include "bg_sea.s"


.globl main

main:
	mov x20, x0
   
	bl draw_bg
	mov x5, xzr
	bl draw_sea

InfLoop:
    b InfLoop
