.ifndef data_s
.equ data_s, 0

.data 

blue_color: .word 0x0000FF
bluecolorbg1: .word 0x4965F0
bluecolorbg2: .word 0x253BA9

.equ SCREEN_WIDTH,   640
.equ SCREEN_HEIGH,   480
.equ BITS_PER_PIXEL, 32

.equ GPIO_BASE,    0x3f200000
.equ GPIO_GPFSEL0, 0x00
.equ GPIO_GPLEV0,  0x34


.endif
