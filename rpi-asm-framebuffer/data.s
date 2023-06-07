.ifndef data_s
.equ data_s, 0

.data 

bufferSecundario: .skip BYTES_FRAMEBUFFER



.equ key_W, 0x2
.equ key_A, 0x4
.equ key_S, 0x8
.equ key_D, 0x10
.equ key_SPACE, 0x20

 // A mayor número mas lento va la animación

delay: .dword 0xFFFFF 


blue_color: .word 0x0000FF
bluecolorbg1: .word 0x4965F0
bluecolorbg2: .word 0x001B9F

green_color1: .word 0x00B70C

/* airplane colors */

blue0_color: .word 0x7890A0
blue1_color: .word 0x88A8C8
blue2_color: .word 0xC0E0F8
blue3_color: .word 0x1898F8
blue4_color: .word 0x1069F8
blue5_color: .word 0x3050B0
blue6_color: .word 0x40C0F8

gray1_color: .word 0x707078
gray2_color: .word 0x505050
gray3_color: .word 0xA8C8E8
gray4_color: .word 0x181818
gray5_color: .word 0x303030
gray6_color: .word 0xF8F8F8


// Variable para guardar la dirección de memoria del comienzo del frame buffer
dir_frameBuffer: .dword 0

.equ SCREEN_WIDTH,   640
.equ SCREEN_HEIGH,   480
.equ BITS_PER_PIXEL, 32
.equ SCREEN_PIXELS, SCREEN_WIDTH * SCREEN_HEIGH
.equ BYTES_PER_PIXEL, 4
.equ BITS_PER_PIXEL, 8 * BYTES_PER_PIXEL
.equ BYTES_FRAMEBUFFER, SCREEN_PIXELS * BYTES_PER_PIXEL

/* GPIO */
.equ GPIO_BASE,    0x3f200000
.equ GPIO_GPFSEL0, 0x00
.equ GPIO_GPLEV0,  0x34

.endif
