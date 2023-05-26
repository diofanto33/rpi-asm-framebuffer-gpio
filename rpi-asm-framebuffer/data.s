.ifndef data_s
.equ data_s, 0

.data 

bufferSecundario: .skip BYTES_FRAMEBUFFER

 // A mayor número mas lento va la animación
delay: .dword 0xFFFFFFA 


blue_color: .word 0x0000FF
bluecolorbg1: .word 0x4965F0
bluecolorbg2: .word 0x001B9F

green_color1: .word 0x00B70C


// Variable para guardar la dirección de memoria del comienzo del frame buffer
dir_frameBuffer: .dword 0

.equ SCREEN_WIDTH,   640
.equ SCREEN_HEIGH,   480
.equ BITS_PER_PIXEL, 32
.equ SCREEN_PIXELS, SCREEN_WIDTH * SCREEN_HEIGH
.equ BYTES_PER_PIXEL, 4
.equ BITS_PER_PIXEL, 8 * BYTES_PER_PIXEL
.equ BYTES_FRAMEBUFFER, SCREEN_PIXELS * BYTES_PER_PIXEL

.equ GPIO_BASE,    0x3f200000
.equ GPIO_GPFSEL0, 0x00
.equ GPIO_GPLEV0,  0x34


.endif
