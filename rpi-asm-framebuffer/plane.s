/* author: diofanto33
 * file  : plane.s 
 * date  : June 6, 2023
 * time  : 04:49:37 AM
 *
 * This file implements the function that draws the plane.
 */

.ifndef plane_s
.equ plane_s, 0x00000000

.include "data.s"
.include "utils.s"

/* @brief: Draws a airplane on the screen at the specified coordinates
 * @param: x3 - The x-coordinate of the plane.
 * @param: x4 - The y-coordinate of the plane.
 * @param: x5 - The z-size of the plane.
 *
 * PRECONDITION: 
 * xCoordinate and yCoordinate must be within the bounds of the screen.
 * The minimum square that contains the airplane is 124x248 pixels,
 * so the valid range for xCoordinate is 62 to 572, and for yCoordinate 
 * is 54 to 426,to ensure the plane is painted inside the screen.
 *
 * The initial direction of the airplane is set to the CENTER of the minimum square.
 * @saveStack: x3, x4, x5, x24, x30
 * @color: w24 
 */

airplane:
    /* save registers */
    sub sp, sp, #56
    str x25, [sp, #48]
    str x6, [sp, #40]
    str x3, [sp, #32]
    str x4, [sp, #24]
    str x5, [sp, #16]
    str x24, [sp, #8]
    str x30, [sp]
    
    /* first line from bottom to top (line 1, lft -> rgt)*/

    sub x3, x3, #29
    add x4, x4, #53
    ldr w24, blue1_color
    bl draw_square

    mov x6, #14
    mul x5, x5, x6
    add x3, x3, x5
    udiv x5, x5, x6
    bl draw_square

    /* next line (line 2, rgt -> lft) */ 

    sub x4, x4, x5
    mov x6, #2
    mul x5, x5, x6
    add x3, x3, x5
    udiv x5, x5, x6
    ldr w24, gray1_color 
    bl draw_square

    sub x3, x3, x5
    ldr w24, gray2_color
    bl draw_square

    sub x3, x3, x5
    ldr w24, blue2_color
    bl draw_square
    
    sub x3, x3, x5
    ldr w24, gray2_color
    bl draw_square

    sub x3, x3, x5
    ldr w24, blue0_color
    bl draw_square

    sub x3, x3, x5
    ldr w24, blue1_color
    bl draw_square

    sub x3, x3, x5
    bl draw_square

    sub x3, x3, x5
    ldr w24, gray3_color
    bl draw_square

    sub x3, x3, x5
    bl draw_square

    sub x3, x3, x5
    bl draw_square

    sub x3, x3, x5
    bl draw_square

    sub x3, x3, x5
    bl draw_square

    sub x3, x3, x5
    ldr w24, blue1_color
    bl draw_square

    sub x3, x3, x5
    bl draw_square

    sub x3, x3, x5
    ldr w24, blue0_color
    bl draw_square

    sub x3, x3, x5
    ldr w24, gray2_color
    bl draw_square

    sub x3, x3, x5
    ldr w24, blue2_color
    bl draw_square
    
    sub x3, x3, x5
    ldr w24, gray2_color
    bl draw_square
    
    sub x3, x3, x5
    ldr w24, gray1_color 
    bl draw_square

    /* next line (line 3, lft -> rgt) */ 

    sub x4, x4, x5
    ldr w24, blue0_color
    bl draw_square
    
    add x3, x3, x5
    bl draw_square

    add x3, x3, x5
    ldr w24, gray6_color
    bl draw_square

    add x3, x3, x5
    ldr w24, gray1_color
    bl draw_square

    add x3, x3, x5
    ldr w24, blue0_color
    bl draw_square

    add x3, x3, x5
    ldr w24, gray3_color
    bl draw_square

    add x3, x3, x5
    ldr w24, blue1_color
    bl draw_square

    add x3, x3, x5
    ldr w24, gray3_color
    bl draw_square
    
    add x3, x3, x5
    bl draw_square

    add x3, x3, x5
    ldr w24, blue1_color
    bl draw_square

    add x3, x3, x5
    ldr w24, gray3_color
    bl draw_square

    add x3, x3, x5
    bl draw_square

    add x3, x3, x5
    ldr w24, blue1_color
    bl draw_square

    add x3, x3, x5
    ldr w24, gray3_color
    bl draw_square
    
    add x3, x3, x5
    ldr w24, blue0_color
    bl draw_square

    add x3, x3, x5
    ldr w24, gray1_color
    bl draw_square

    add x3, x3, x5
    ldr w24, gray6_color
    bl draw_square
    
    add x3, x3, x5
    ldr w24, blue0_color
    bl draw_square
    
    add x3, x3, x5
    bl draw_square

    /* next line (line 4, rgt -> lft) */ 
    
    sub x4, x4, x5
    ldr w24, gray1_color
    bl draw_square

    sub x3, x3, x5
    ldr w24, blue1_color
    bl draw_square

    sub x3, x3, x5
    ldr w24, blue2_color
    bl draw_square

    sub x3, x3, x5
    ldr w24, blue0_color
    bl draw_square

    sub x3, x3, x5
    bl draw_square

    sub x3, x3, x5
    bl draw_square

    sub x3, x3, x5
    bl draw_square

    sub x3, x3, x5
    bl draw_square

    sub x3, x3, x5
    bl draw_square

    sub x3, x3, x5
    bl draw_square

    sub x3, x3, x5
    bl draw_square

    sub x3, x3, x5
    bl draw_square

    sub x3, x3, x5
    bl draw_square

    sub x3, x3, x5
    bl draw_square

    sub x3, x3, x5
    bl draw_square

    sub x3, x3, x5
    bl draw_square

    sub x3, x3, x5
    ldr w24, blue2_color
    bl draw_square

    sub x3, x3, x5
    ldr w24, blue1_color
    bl draw_square

    sub x3, x3, x5
    ldr w24, gray1_color
    bl draw_square

   /* next line (line 5, lft -> rgt) */ 

    sub x4, x4, x5
    mov x6, #2
    mul x5, x5, x6
    add x3, x3, x5
    udiv x5, x5, x6
    ldr w24, blue1_color
    bl draw_square

    mov x6, #14
    mul x5, x5, x6
    add x3, x3, x5
    udiv x5, x5, x6
    bl draw_square
    
    /* next line (line 6, rgt -> lft) */ 

    sub x4, x4, x5
    ldr w24, blue0_color
    bl draw_square

    mov x6, #14
    mul x5, x5, x6
    sub x3, x3, x5
    udiv x5, x5, x6
    bl draw_square

    /* next line (line 7, lft -> rgt) */ 
    
    sub x4, x4, x5
    bl draw_square

    mov x6, #14
    mul x5, x5, x6
    add x3, x3, x5
    udiv x5, x5, x6
    bl draw_square

    /* next line (line 8, rgt -> lft) */ 
    
    sub x4, x4, x5
    ldr w24, blue1_color
    bl draw_square

    add x3, x3, x5
    ldr w24, gray1_color
    bl draw_square

    mov x6, #2
    mul x5, x5, x6
    sub x3, x3, x5
    udiv x5, x5, x6
    bl draw_square

    mov x6, #12
    mul x5, x5, x6
    sub x3, x3, x5
    udiv x5, x5, x6
    bl draw_square

    sub x3, x3, x5
    ldr w24, blue1_color
    bl draw_square

    sub x3, x3, x5
    ldr w24, gray1_color
    bl draw_square

    /* next line (line 9, lft -> rgt) */ 
    
    sub x4, x4, x5
    ldr w24, blue1_color 
    bl draw_square

    add x3, x3, x5
    ldr w24, gray3_color 
    bl draw_square

    add x3, x3, x5
    ldr w24, blue1_color 
    bl draw_square

    mov x6, #12
    mul x5, x5, x6
    add x3, x3, x5
    udiv x5, x5, x6
    bl draw_square 

    add x3, x3, x5
    ldr w24, gray3_color 
    bl draw_square
    
    add x3, x3, x5
    ldr w24, blue1_color
    bl draw_square

    /* next line (line 10, rgt -> lft) */  
    
    sub x4, x4, x5
    ldr w24, blue2_color 
    bl draw_square

    sub x3, x3, x5
    ldr w24, gray3_color
    bl draw_square 

    sub x3, x3, x5
    ldr w24, blue2_color 
    bl draw_square

    mov x6, #12
    mul x5, x5, x6
    sub x3, x3, x5
    udiv x5, x5, x6
    bl draw_square

    sub x3, x3, x5
    ldr w24, gray3_color 
    bl draw_square 

    sub x3, x3, x5
    ldr w24, blue2_color
    bl draw_square 

    /* next line (line 11, lft -> rgt) */ 
    
    sub x4, x4, x5
    ldr w24, gray1_color 
    bl draw_square 

    add x3, x3, x5
    ldr w24, blue1_color
    bl draw_square

    add x3, x3, x5
    ldr w24, gray1_color
    bl draw_square

    mov x6, #12
    mul x5, x5, x6
    add x3, x3, x5
    udiv x5, x5, x6
    bl draw_square

    add x3, x3, x5
    ldr w24, blue1_color 
    bl draw_square

    add x3, x3, x5
    ldr w24, gray1_color 
    bl draw_square

   /* next line (line 12, rgt -> lft) */ 

    sub x4, x4, x5
    ldr w24, gray2_color
    bl draw_square

    sub x3, x3, x5
    ldr w24, blue1_color
    bl draw_square

    sub x3, x3, x5
    ldr w24, gray2_color 
    bl draw_square

    mov x6, #12
    mul x5, x5, x6
    sub x3, x3, x5
    udiv x5, x5, x6
    bl draw_square

    sub x3, x3, x5
    ldr w24, blue1_color 
    bl draw_square 

    sub x3, x3, x5
    ldr w24, gray2_color 
    bl draw_square

    /* next line (line 13, lft -> rgt) */  

    sub x4, x4, x5
    ldr w24, gray2_color
    bl draw_square

    add x3, x3, x5
    ldr w24, blue1_color
    bl draw_square

    add x3, x3, x5
    ldr w24, gray2_color 
    bl draw_square

    mov x6, #12
    mul x5, x5, x6
    add x3, x3, x5
    udiv x5, x5, x6
    bl draw_square

    add x3, x3, x5
    ldr w24, blue1_color 
    bl draw_square 

    add x3, x3, x5
    ldr w24, gray2_color 
    bl draw_square

    /* next line (line 14, rgt -> lft) */ 
    
    sub x4, x4, x5
    bl draw_square 

    sub x3, x3, x5
    ldr w24, blue1_color 
    bl draw_square 

    sub x3, x3, x5
    ldr w24, gray2_color 
    bl draw_square 

    mov x6, #4
    mul x5, x5, x6
    sub x3, x3, x5
    udiv x5, x5, x6
    bl draw_square

    sub x3, x3, x5
    bl draw_square

    sub x3, x3, x5
    ldr w24,blue0_color 
    bl draw_square 
    
    sub x3, x3, x5
    ldr w24, gray2_color 
    bl draw_square 

    sub x3, x3, x5
    bl draw_square 

    mov x6, #4
    mul x5, x5, x6
    sub x3, x3, x5
    udiv x5, x5, x6
    bl draw_square 

    sub x3, x3, x5
    ldr w24, blue0_color
    bl draw_square 

    sub x3, x3, x5
    ldr w24, gray2_color 
    bl draw_square 
    
    /* next line (line 15, lft -> rgt) */
   
    sub x4, x4, x5
    ldr w24, gray1_color
    bl draw_square 

    add x3, x3, x5
    ldr w24, gray3_color
    bl draw_square 

    add x3, x3, x5
    ldr w24, gray1_color 
    bl draw_square 

    add x3, x3, x5
    ldr w24, gray2_color 
    bl draw_square
    
    add x3, x3, x5
    ldr w24, gray1_color 
    bl draw_square

    add x3, x3, x5
    ldr w24, blue0_color 
    bl draw_square

    add x3, x3, x5
    bl draw_square

    add x3, x3, x5
    ldr w24, gray1_color 
    bl draw_square
    
    add x3, x3, x5
    ldr w24, blue1_color
    bl draw_square

    add x3, x3, x5
    ldr w24, gray1_color
    bl draw_square
    
    add x3, x3, x5
    ldr w24, blue0_color 
    bl draw_square
    
    add x3, x3, x5
    bl draw_square
    
    add x3, x3, x5
    ldr w24, gray1_color 
    bl draw_square
    
    add x3, x3, x5
    ldr w24, gray2_color
    bl draw_square 

    add x3, x3, x5
    ldr w24, gray1_color
    bl draw_square

    add x3, x3, x5
    ldr w24, gray3_color 
    bl draw_square
    
    add x3, x3, x5
    ldr w24, gray1_color
    bl draw_square
    
    /* next line (line 16, rgt -> lft) */ 
    
    sub x4, x4, x5
    mov x6, #4
    mul x5, x5, x6
    add x3, x3, x5
    udiv x5, x5, x6
    bl draw_square

    sub x3, x3, x5
    bl draw_square

    sub x3, x3, x5
    ldr w24, blue0_color 
    bl draw_square 

    sub x3, x3, x5
    bl draw_square

    sub x3, x3, x5
    bl draw_square

    sub x3, x3, x5
    ldr w24, blue2_color 
    bl draw_square 

    sub x3, x3, x5
    ldr w24, blue0_color
    bl draw_square

    sub x3, x3, x5
    bl draw_square 

    sub x3, x3, x5
    ldr w24, blue1_color
    bl draw_square 

    sub x3, x3, x5
    bl draw_square 

    sub x3, x3, x5
    bl draw_square

    sub x3, x3, x5
    ldr w24, blue0_color
    bl draw_square 

    sub x3, x3, x5
    ldr w24, gray3_color 
    bl draw_square

    sub x3, x3, x5
    ldr w24, blue0_color 
    bl draw_square
    
    sub x3, x3, x5
    ldr w24, blue1_color 
    bl draw_square

    sub x3, x3, x5
    bl draw_square 

    sub x3, x3, x5
    bl draw_square

    sub x3, x3, x5
    ldr w24, blue0_color 
    bl draw_square 

    sub x3, x3, x5
    bl draw_square 

    sub x3, x3, x5
    ldr w24, blue2_color
    bl draw_square
    
    sub x3, x3, x5
    ldr w24, blue0_color 
    bl draw_square 

    sub x3, x3, x5
    bl draw_square 

    sub x3, x3, x5
    bl draw_square 
     
    sub x3, x3, x5
    ldr w24, gray1_color 
    bl draw_square 
    
    sub x3, x3, x5
    bl draw_square

    /* next line (line 17, lft -> rgt) */

    sub x4, x4, x5
    mov x6, #3
    mul x5, x5, x6
    sub x3, x3, x5
    udiv x5, x5, x6
    ldr w24, blue5_color 
    bl draw_square

    add x3, x3, x5
    ldr w24, blue0_color 
    bl draw_square 

    add x3, x3, x5
    ldr w24, blue1_color
    bl draw_square 

    add x3, x3, x5
    ldr w24, gray3_color 
    bl draw_square 

    add x3, x3, x5
    ldr w24, blue2_color 
    bl draw_square 

    add x3, x3, x5
    bl draw_square
    
    add x3, x3, x5
    ldr w24, gray3_color
    bl draw_square 
    
    add x3, x3, x5
    ldr w24, blue1_color 
    bl draw_square 

    add x3, x3, x5
    ldr w24, gray6_color 
    bl draw_square 

    add x3, x3, x5
    ldr w24, blue0_color 
    bl draw_square 

    add x3, x3, x5
    ldr w24, blue1_color 
    bl draw_square 

    add x3, x3, x5
    ldr w24, gray3_color 
    bl draw_square 

    add x3, x3, x5
    bl draw_square 

    add x3, x3, x5
    ldr w24, blue1_color 
    bl draw_square 

    add x3, x3, x5
    ldr w24, gray1_color 
    bl draw_square 

    add x3, x3, x5
    ldr w24, blue2_color
    bl draw_square 

    add x3, x3, x5
    ldr w24, gray1_color 
    bl draw_square 

    add x3, x3, x5
    ldr w24, blue1_color
    bl draw_square

    add x3, x3, x5
    ldr w24, gray3_color
    bl draw_square 

    add x3, x3, x5
    bl draw_square 

    add x3, x3, x5
    ldr w24, blue1_color 
    bl draw_square 

    add x3, x3, x5
    ldr w24, blue0_color 
    bl draw_square 

    add x3, x3, x5
    ldr w24, gray6_color 
    bl draw_square 

    add x3, x3, x5
    ldr w24, blue1_color 
    bl draw_square 

    add x3, x3, x5
    ldr w24, gray3_color 
    bl draw_square 

    add x3, x3, x5
    ldr w24, blue2_color 
    bl draw_square 

    add x3, x3, x5
    bl draw_square 

    add x3, x3, x5
    ldr w24, gray3_color 
    bl draw_square 
    
    add x3, x3, x5
    ldr w24, blue1_color
    bl draw_square 

    add x3, x3, x5
    ldr w24, blue0_color 
    bl draw_square 

    add x3, x3, x5
    ldr w24, blue5_color
    bl draw_square 

    /* next line (line 18, rgt -> lft) */ 
    
    sub x4, x4, x5
    ldr w24, blue3_color
    bl draw_square

    sub x3, x3, x5
    ldr w24, blue2_color 
    bl draw_square 
    
    sub x3, x3, x5
    ldr w24, gray6_color 
    bl draw_square 

    sub x3, x3, x5
    bl draw_square 

    sub x3, x3, x5
    bl draw_square 

    sub x3, x3, x5
    bl draw_square 

    sub x3, x3, x5
    ldr w24, blue2_color 
    bl draw_square 

    sub x3, x3, x5
    ldr w24, gray3_color 
    bl draw_square 

    sub x3, x3, x5
    ldr w24, blue2_color
    bl draw_square 

    sub x3, x3, x5
    ldr w24, blue1_color 
    bl draw_square 

    sub x3, x3, x5
    ldr w24, gray3_color 
    bl draw_square 

    sub x3, x3, x5
    ldr w24, blue2_color 
    bl draw_square 

    sub x3, x3, x5
    bl draw_square
    
    sub x3, x3, x5
    ldr w24, blue0_color
    bl draw_square 
    
    sub x3, x3, x5
    ldr w24, gray5_color
    bl draw_square 

    sub x3, x3, x5
    ldr w24, gray6_color 
    bl draw_square 

    sub x3, x3, x5
    ldr w24, gray5_color 
    bl draw_square 

    sub x3, x3, x5
    ldr w24, blue0_color 
    bl draw_square 

    sub x3, x3, x5
    ldr w24, blue2_color 
    bl draw_square 

    sub x3, x3, x5
    bl draw_square 
    
    sub x3, x3, x5
    ldr w24, gray3_color 
    bl draw_square 

    sub x3, x3, x5
    ldr w24, blue1_color 
    bl draw_square 

    sub x3, x3, x5
    ldr w24, blue2_color 
    bl draw_square 

    sub x3, x3, x5
    ldr w24, gray3_color
    bl draw_square 

    sub x3, x3, x5
    ldr w24, blue2_color 
    bl draw_square 

    sub x3, x3, x5
    ldr w24, gray6_color 
    bl draw_square 

    sub x3, x3, x5
    bl draw_square 

    sub x3, x3, x5
    bl draw_square 

    sub x3, x3, x5
    bl draw_square
    
    sub x3, x3, x5
    ldr w24, blue2_color
    bl draw_square 

    sub x3, x3, x5
    ldr w24, blue3_color 
    bl draw_square 
    
    /* next line (line 19, lft -> rgt) */ 

    sub x4, x4, x5
    ldr w24, blue4_color
    bl draw_square 

    add x3, x3, x5
    ldr w24, blue0_color
    bl draw_square 

    add x3, x3, x5
    bl draw_square
    
    add x3, x3, x5
    ldr w24, blue1_color 
    bl draw_square 

    add x3, x3, x5
    bl draw_square 

    add x3, x3, x5
    ldr w24, gray3_color 
    bl draw_square 

    add x3, x3, x5
    bl draw_square
     
    add x3, x3, x5
    ldr w24, blue1_color 
    bl draw_square 

    add x3, x3, x5
    ldr w24, blue2_color
    bl draw_square 

    add x3, x3, x5
    ldr w24, gray3_color 
    bl draw_square
     
    add x3, x3, x5
    ldr w24, blue2_color 
    bl draw_square 
    
    add x3, x3, x5
    ldr w24, gray6_color 
    bl draw_square 

    add x3, x3, x5
    ldr w24, blue2_color 
    bl draw_square 

    add x3, x3, x5
    ldr w24, gray1_color
    bl draw_square 

    add x3, x3, x5
    mov w24, wzr
    bl draw_square 

    add x3, x3, x5
    ldr w24, gray1_color 
    bl draw_square 

    add x3, x3, x5
    mov w24, wzr
    bl draw_square 

    add x3, x3, x5
    ldr w24, gray1_color 
    bl draw_square 

    add x3, x3, x5
    ldr w24, blue2_color 
    bl draw_square 

    add x3, x3, x5
    ldr w24, gray6_color 
    bl draw_square 

    add x3, x3, x5
    ldr w24, blue2_color 
    bl draw_square 

    add x3, x3, x5
    ldr w24, gray3_color 
    bl draw_square 
    
    add x3, x3, x5
    ldr w24, blue2_color 
    bl draw_square 

    add x3, x3, x5
    ldr w24, blue1_color 
    bl draw_square 

    add x3, x3, x5
    ldr w24, gray3_color 
    bl draw_square 

    add x3, x3, x5
    bl draw_square 

    add x3, x3, x5
    ldr w24, blue1_color
    bl draw_square 

    add x3, x3, x5
    bl draw_square 

    add x3, x3, x5
    ldr w24, blue0_color
    bl draw_square 

    add x3, x3, x5
    bl draw_square 

    add x3, x3, x5
    ldr w24, blue4_color 
    bl draw_square

    
    /* next line (line 20, rgt -> lft) */

    sub x4, x4, x5
    mov x6, #7
    mul x5, x5, x6
    sub x3, x3, x5
    udiv x5, x5, x6
    ldr w24, gray1_color 
    bl draw_square 

    sub x3, x3, x5
    ldr w24, blue2_color 
    bl draw_square 

    sub x3, x3, x5
    ldr w24, blue3_color
    bl draw_square 

    sub x3, x3, x5
    ldr w24, gray1_color 
    bl draw_square 
    
    sub x3, x3, x5
    ldr w24, blue0_color 
    bl draw_square 

    sub x3, x3, x5
    ldr w24, blue1_color
    bl draw_square 
    
    sub x3, x3, x5
    ldr w24, gray2_color 
    bl draw_square 

    sub x3, x3, x5
    mov w24, wzr 
    bl draw_square

    sub x3, x3, x5
    ldr w24, gray2_color 
    bl draw_square 

    sub x3, x3, x5
    mov w24, wzr 
    bl draw_square 

    sub x3, x3, x5
    ldr w24, gray2_color 
    bl draw_square 

    sub x3, x3, x5
    ldr w24, blue1_color 
    bl draw_square 

    sub x3, x3, x5
    ldr w24, blue0_color
    bl draw_square 

    sub x3, x3, x5
    ldr w24, gray1_color 
    bl draw_square 

    sub x3, x3, x5
    ldr w24, blue3_color 
    bl draw_square 

    sub x3, x3, x5
    ldr w24, blue2_color 
    bl draw_square 

    sub x3, x3, x5
    ldr w24, gray1_color 
    bl draw_square 

    /* next line (line 21, lft -> rgt) */ 
    
    sub x4, x4, x5
    bl draw_square 

    add x3, x3, x5
    ldr w24, blue2_color 
    bl draw_square 

    add x3, x3, x5
    ldr w24, blue3_color 
    bl draw_square 

    mov x6, #5
    mul x5, x5, x6
    add x3, x3, x5
    udiv x5, x5, x6
    ldr w24, gray4_color 
    bl draw_square 

    add x3, x3, x5
    ldr w24, blue1_color
    bl draw_square 

    add x3, x3, x5
    ldr w24, gray4_color 
    bl draw_square 

    mov x6, #5
    mul x5, x5, x6
    add x3, x3, x5
    udiv x5, x5, x6
    ldr w24, blue3_color 
    bl draw_square 

    add x3, x3, x5
    ldr w24, blue2_color 
    bl draw_square 

    add x3, x3, x5
    ldr w24, gray1_color 
    bl draw_square 

    /* next line (line 22, rgt -> lft) */ 
    
    sub x4, x4, x5
    bl draw_square 

    sub x3, x3, x5
    ldr w24, gray6_color 
    bl draw_square 

    sub x3, x3, x5
    ldr w24, blue4_color
    bl draw_square 

    mov x6, #5
    mul x5, x5, x6
    sub x3, x3, x5
    udiv x5, x5, x6
    ldr w24, blue5_color
    bl draw_square 

    sub x3, x3, x5
    ldr w24, gray5_color 
    bl draw_square 

    sub x3, x3, x5
    ldr w24, blue5_color 
    bl draw_square 

    mov x6, #5
    mul x5, x5, x6
    sub x3, x3, x5
    udiv x5, x5, x6
    ldr w24, blue4_color 
    bl draw_square 

    sub x3, x3, x5
    ldr w24, gray6_color 
    bl draw_square 

    sub x3, x3, x5
    ldr w24, gray1_color 
    bl draw_square 

    /* next line (line 23, lft -> rgt) */
    
    sub x4, x4, x5
    bl draw_square 

    add x3, x3, x5
    ldr w24, blue2_color
    bl draw_square

    add x3, x3, x5
    ldr w24, blue4_color 
    bl draw_square 

    mov x6, #5
    mul x5, x5, x6
    add x3, x3, x5
    udiv x5, x5, x6
    ldr w24, blue5_color 
    bl draw_square 

    add x3, x3, x5
    ldr w24, blue4_color
    bl draw_square 

    add x3, x3, x5
    ldr w24, blue5_color 
    bl draw_square 

    mov x6, #5
    mul x5, x5, x6
    add x3, x3, x5
    udiv x5, x5, x6
    ldr w24, blue4_color 
    bl draw_square 

    add x3, x3, x5
    ldr w24, blue2_color 
    bl draw_square 

    add x3, x3, x5
    ldr w24, gray1_color 
    bl draw_square 

    /* next line (line 24, rgt -> lft) */ 
    
    sub x4, x4, x5
    ldr w24, gray2_color
    bl draw_square 
    
    sub x3, x3, x5
    ldr w24, gray1_color 
    bl draw_square 

    sub x3, x3, x5
    ldr w24, blue5_color 
    bl draw_square 

    mov x6, #5
    mul x5, x5, x6
    sub x3, x3, x5
    udiv x5, x5, x6
    bl draw_square 

    sub x3, x3, x5
    ldr w24, blue3_color 
    bl draw_square 

    sub x3, x3, x5
    ldr w24, blue5_color 
    bl draw_square 

    mov x6, #5
    mul x5, x5, x6
    sub x3, x3, x5
    udiv x5, x5, x6
    bl draw_square 

    sub x3, x3, x5
    ldr w24, gray1_color
    bl draw_square 

    sub x3, x3, x5
    ldr w24, gray2_color
    bl draw_square

    /* next line (line 25, lft -> rgt) ENGINE */ 
    
    sub x4, x4, x5
    mov x6, #7
    mul x5, x5, x6
    add x3, x3, x5
    udiv x5, x5, x6
    ldr w24, blue5_color
    bl draw_square 

    add x3, x3, x5
    ldr w24, blue6_color
    bl draw_square 

    add x3, x3, x5
    ldr w24, blue5_color
    bl draw_square 

    /* next line (line 26, rgt -> lft) */ 
    
    sub x4, x4, x5
    bl draw_square 

    sub x3, x3, x5
    ldr w24, blue6_color
    bl draw_square 

    sub x3, x3, x5
    ldr w24, blue5_color
    bl draw_square 

    mov x6, #8
    mul x5, x5, x6
    add x3, x3, x5
    udiv x5, x5, x6
    ldr w24, blue4_color
    bl draw_square

    mov x6, #14
    mul x5, x5, x6
    sub x3, x3, x5
    udiv x5, x5, x6
    bl draw_square

    /* next line (line 27, lft -> rgt) */ 
    
    sub x4, x4, x5
    mov x6, #6
    mul x5, x5, x6
    add x3, x3, x5
    udiv x5, x5, x6
    ldr w24, gray2_color
    bl draw_square 

    add x3, x3, x5
    ldr w24, blue1_color
    bl draw_square 

    add x3, x3, x5
    ldr w24, gray2_color 
    bl draw_square 

    /* next line (line 28, rgt -> lft) LAST LINE */ 
    
    sub x4, x4, x5
    sub x3, x3, x5
    ldr w24, blue0_color 
    bl draw_square

    /* adjust x,y propellers */
    mov x6, #10
    mul x5, x5, x6
    sub x3, x3, x5
    udiv x5, x5, x6
    mov x6, #3
    mul x5, x5, x6
    add x4, x4, x5
    udiv x5, x5, x6

    // Position in the middle of the propeller
    mov x6, #3
    mul x5, x5, x6
    add x3, x3, x5
    udiv x5, x5, x6

    cbz x27, propeller_frame_1
    cbnz x27, propeller_frame_2

endif_propeller_frame_1:
    /* restore registers */

    ldr x25, [sp, #48]
    ldr x6, [sp, #40]
    ldr x3, [sp, #32]
    ldr x4, [sp, #24]
    ldr x5, [sp, #16]
    ldr x24, [sp, #8]
    ldr x30, [sp]
    add sp, sp, #56
    br x30 

/*
 * @brief: draw propeller frame 1 
 * @param: x3 - x coordinate of the center of the airplane 
 * @param: x4 - y coordinate of the center of the airplane
 * @return: none
 */ 

propeller_frame_1:
     /* save registers */
    sub sp, sp, #32
    str x3, [sp, #24]
    str x4, [sp, #16]
    str x24, [sp, #8]
    str x30, [sp, #0]

    mov x6, #3
    mul x5, x5, x6
    sub x3, x3, x5
    udiv x5, x5, x6

    /* draw propeller */
    ldr w24, gray5_color
    //mov x5, #4
    bl draw_square 

    add x3, x3, x5
    ldr w24, gray4_color 
    bl draw_square 

    add x3, x3, x5
    mov w24, wzr
    bl draw_square 

    add x3, x3, x5
    ldr w24, blue0_color 
    bl draw_square 

    add x3, x3, x5
    mov w24, wzr 
    bl draw_square 

    add x3, x3, x5
    ldr w24, gray4_color 
    bl draw_square 

    add x3, x3, x5
    ldr w24, gray5_color 
    bl draw_square 

    mov x6, #8
    mul x5, x5, x6
    add x3, x3, x5
    udiv x5, x5, x6
    ldr w24, gray5_color
    bl draw_square 

    add x3, x3, x5
    ldr w24, gray4_color 
    bl draw_square 

    add x3, x3, x5
    mov w24, wzr 
    bl draw_square 

    add x3, x3, x5
    ldr w24, blue0_color 
    bl draw_square 

    add x3, x3, x5
    mov w24, wzr 
    bl draw_square 

    add x3, x3, x5
    ldr w24, gray4_color 
    bl draw_square 

    add x3, x3, x5
    ldr w24, gray5_color 
    bl draw_square 

    ldr x3, [sp, #24]
    ldr x4, [sp, #16]
    ldr x24, [sp, #8]
    ldr x30, [sp, #0]
    add sp, sp, #32
    //br x30
    mov x27, #1
    b endif_propeller_frame_1

propeller_frame_2:
     /* save registers */
    sub sp, sp, #32
    str x3, [sp, #24]
    str x4, [sp, #16]
    str x24, [sp, #8]
    str x30, [sp, #0]

    ldr w24, red0_color
    //mov x5, #2
    bl draw_square 

    mov x6, #14
    mul x5, x5, x6
    add x3, x3, x5
    udiv x5, x5, x6
    bl draw_square

    ldr x3, [sp, #24]
    ldr x4, [sp, #16]
    ldr x24, [sp, #8]
    ldr x30, [sp, #0]
    add sp, sp, #32
    //br x30
    mov x27, #0
    b endif_propeller_frame_1

.endif
