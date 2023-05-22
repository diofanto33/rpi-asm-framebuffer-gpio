
.include "utils.s" 
.include "data.s"

.globl main

main:
    mov x20, x0

    bl squared_bg
		
InfLoop:
    b InfLoop
