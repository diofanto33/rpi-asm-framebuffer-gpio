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
 *
 * PRECONDITION: 
 * xCoordinate and yCoordinate must be within the bounds of the screen.
 * The minimum square that contains the airplane is 124x108 pixels,
 * so the valid range for xCoordinate is 62 to 572, and for yCoordinate 
 * is 54 to 426,to ensure the plane is painted inside the screen.
 *
 * The initial direction of the airplane is set to the CENTER of the minimum square.
 * @saveStack: x3, x4, x5, x10, x30
 */

airplane:
    /* save registers */
    sub sp, sp, #40
    str x3, [sp, #32]
    str x4, [sp, #24]
    str x5, [sp, #16]
    str x10, [sp, #8]
    str x30, [sp, #0]
 
    mov x5, #4 
    
    /* first line from bottom to top (line 1, lft -> rgt)*/

    sub x3, x3, #29
    add x4, x4, #53
    ldr w10, blue1_color
    bl draw_square

    add x3, x3, #56
    bl draw_square

    /* next line (line 2, rgt -> lft) */ 

    sub x4, x4, #4 
    add x3, x3, #8
    ldr w10, gray1_color 
    bl draw_square

    sub x3, x3, #4 
    ldr w10, gray2_color
    bl draw_square
    
    sub x3, x3, #4 
    ldr w10, blue2_color
    bl draw_square
    
    sub x3, x3, #4 
    ldr w10, gray2_color
    bl draw_square

    sub x3, x3, #4 
    ldr w10, blue0_color
    bl draw_square

    sub x3, x3, #4 
    ldr w10, blue1_color
    bl draw_square

    sub x3, x3, #4 
    bl draw_square

    sub x3, x3, #4 
    ldr w10, gray3_color
    bl draw_square

    sub x3, x3, #4 
    bl draw_square

    sub x3, x3, #4 
    bl draw_square

    sub x3, x3, #4 
    bl draw_square

    sub x3, x3, #4 
    bl draw_square

    sub x3, x3, #4 
    ldr w10, blue1_color
    bl draw_square

    sub x3, x3, #4 
    bl draw_square

    sub x3, x3, #4 
    ldr w10, blue0_color
    bl draw_square

    sub x3, x3, #4 
    ldr w10, gray2_color
    bl draw_square

    sub x3, x3, #4 
    ldr w10, blue2_color
    bl draw_square
    
    sub x3, x3, #4 
    ldr w10, gray2_color
    bl draw_square
    
    sub x3, x3, #4
    ldr w10, gray1_color 
    bl draw_square

    /* next line (line 3, lft -> rgt) */ 

    sub x4, x4, #4 
    ldr w10, blue0_color
    bl draw_square
    
    add x3, x3, #4 
    bl draw_square

    add x3, x3, #4 
    ldr w10, gray6_color
    bl draw_square

    add x3, x3, #4 
    ldr w10, gray1_color
    bl draw_square

    add x3, x3, #4 
    ldr w10, blue0_color
    bl draw_square

    add x3, x3, #4 
    ldr w10, gray3_color
    bl draw_square

    add x3, x3, #4 
    ldr w10, blue1_color
    bl draw_square

    add x3, x3, #4 
    ldr w10, gray3_color
    bl draw_square
    
    add x3, x3, #4 
    bl draw_square

    add x3, x3, #4 
    ldr w10, blue1_color
    bl draw_square

    add x3, x3, #4 
    ldr w10, gray3_color
    bl draw_square

    add x3, x3, #4 
    bl draw_square

    add x3, x3, #4 
    ldr w10, blue1_color
    bl draw_square

    add x3, x3, #4 
    ldr w10, gray3_color
    bl draw_square
    
    add x3, x3, #4 
    ldr w10, blue0_color
    bl draw_square

    add x3, x3, #4 
    ldr w10, gray1_color
    bl draw_square

    add x3, x3, #4 
    ldr w10, gray6_color
    bl draw_square
    
    add x3, x3, #4 
    ldr w10, blue0_color
    bl draw_square
    
    add x3, x3, #4 
    bl draw_square

    /* next line (line 4, rgt -> lft) */ 
    
    sub x4, x4, #4 
    ldr w10, gray1_color
    bl draw_square

    sub x3, x3, #4 
    ldr w10, blue1_color
    bl draw_square

    sub x3, x3, #4 
    ldr w10, blue2_color
    bl draw_square

    sub x3, x3, #4 
    ldr w10, blue0_color
    bl draw_square

    sub x3, x3, #4 
    bl draw_square

    sub x3, x3, #4 
    bl draw_square

    sub x3, x3, #4 
    bl draw_square

    sub x3, x3, #4 
    bl draw_square

    sub x3, x3, #4 
    bl draw_square

    sub x3, x3, #4 
    bl draw_square

    sub x3, x3, #4 
    bl draw_square

    sub x3, x3, #4 
    bl draw_square

    sub x3, x3, #4 
    bl draw_square

    sub x3, x3, #4 
    bl draw_square

    sub x3, x3, #4 
    bl draw_square

    sub x3, x3, #4 
    bl draw_square

    sub x3, x3, #4 
    ldr w10, blue2_color
    bl draw_square

    sub x3, x3, #4 
    ldr w10, blue1_color
    bl draw_square

    sub x3, x3, #4 
    ldr w10, gray1_color
    bl draw_square

   /* next line (line 5, lft -> rgt) */ 

    sub x4, x4, #4 
    add x3, x3, #8
    ldr w10, blue1_color
    bl draw_square

    add x3, x3, #56
    bl draw_square
    
    /* next line (line 6, rgt -> lft) */ 

    sub x4, x4, #4 
    ldr w10, blue0_color
    bl draw_square
    
    sub x3, x3, #56
    bl draw_square

    /* next line (line 7, lft -> rgt) */ 
    
    sub x4, x4, #4 
    bl draw_square

    add x3, x3, #56 
    bl draw_square

    /* next line (line 8, rgt -> lft) */ 
    
    sub x4, x4, #4 
    ldr w10, blue1_color
    bl draw_square

    add x3, x3, #4 
    ldr w10, gray1_color
    bl draw_square

    sub x3, x3, #8
    bl draw_square
    
    sub x3, x3, #48
    bl draw_square

    sub x3, x3, #4 
    ldr w10, blue1_color
    bl draw_square

    sub x3, x3, #4 
    ldr w10, gray1_color
    bl draw_square

    /* next line (line 9, lft -> rgt) */ 
    
    sub x4, x4, #4 
    ldr w10, blue1_color 
    bl draw_square

    add x3, x3, #4 
    ldr w10, gray3_color 
    bl draw_square

    add x3, x3, #4 
    ldr w10, blue1_color 
    bl draw_square

    add x3, x3, #48 
    bl draw_square 

    add x3, x3, #4 
    ldr w10, gray3_color 
    bl draw_square
    
    add x3, x3, #4 
    ldr w10, blue1_color
    bl draw_square

    /* next line (line 10, rgt -> lft) */  
    
    sub x4, x4, #4 
    ldr w10, blue2_color 
    bl draw_square

    sub x3, x3, #4 
    ldr w10, gray3_color
    bl draw_square 

    sub x3, x3, #4 
    ldr w10, blue2_color 
    bl draw_square

    sub x3, x3, #48
    bl draw_square

    sub x3, x3, #4 
    ldr w10, gray3_color 
    bl draw_square 

    sub x3, x3, #4 
    ldr w10, blue2_color 
    bl draw_square 

    /* next line (line 11, lft -> rgt) */ 
    
    sub x4, x4, #4 
    ldr w10, gray1_color 
    bl draw_square 

    add x3, x3, #4 
    ldr w10, blue1_color
    bl draw_square

    add x3, x3, #4 
    ldr w10, gray1_color
    bl draw_square

    add x3, x3, #48
    bl draw_square

    add x3, x3, #4 
    ldr w10, blue1_color 
    bl draw_square

    add x3, x3, #4 
    ldr w10, gray1_color 
    bl draw_square

   /* next line (line 12, rgt -> lft) */ 

    sub x4, x4, #4 
    ldr w10, gray2_color
    bl draw_square

    sub x3, x3, #4 
    ldr w10, blue1_color
    bl draw_square

    sub x3, x3, #4 
    ldr w10, gray2_color 
    bl draw_square

    sub x3, x3, #48
    bl draw_square

    sub x3, x3, #4 
    ldr w10, blue1_color 
    bl draw_square 

    sub x3, x3, #4 
    ldr w10, gray2_color 
    bl draw_square

    /* next line (line 13, lft -> rgt) */  

    sub x4, x4, #4 
    ldr w10, gray2_color
    bl draw_square

    add x3, x3, #4 
    ldr w10, blue1_color
    bl draw_square

    add x3, x3, #4 
    ldr w10, gray2_color 
    bl draw_square

    add x3, x3, #48
    bl draw_square

    add x3, x3, #4 
    ldr w10, blue1_color 
    bl draw_square 

    add x3, x3, #4 
    ldr w10, gray2_color 
    bl draw_square

    /* next line (line 14, rgt -> lft) */ 
    
    sub x4, x4, #4 
    bl draw_square 

    sub x3, x3, #4 
    ldr w10, blue1_color 
    bl draw_square 

    sub x3, x3, #4 
    ldr w10, gray2_color 
    bl draw_square 

    sub x3, x3, #16 
    bl draw_square

    sub x3, x3, #4 
    bl draw_square

    sub x3, x3, #4 
    ldr w10,blue0_color 
    bl draw_square 
    
    sub x3, x3, #4 
    ldr w10, gray2_color 
    bl draw_square 

    sub x3, x3, #4 
    bl draw_square 

    sub x3, x3, #16 
    bl draw_square 

    sub x3, x3, #4 
    ldr w10, blue0_color
    bl draw_square 

    sub x3, x3, #4 
    ldr w10, gray2_color 
    bl draw_square 
    
    /* next line (line 15, lft -> rgt) */
   
    sub x4, x4, #4
    ldr w10, gray1_color
    bl draw_square 

    add x3, x3, #4 
    ldr w10, gray3_color
    bl draw_square 

    add x3, x3, #4 
    ldr w10, gray1_color 
    bl draw_square 

    add x3, x3, #4 
    ldr w10, gray2_color 
    bl draw_square
    
    add x3, x3, #4 
    ldr w10, gray1_color 
    bl draw_square

    add x3, x3, #4 
    ldr w10, blue0_color 
    bl draw_square

    add x3, x3, #4 
    bl draw_square

    add x3, x3, #4 
    ldr w10, gray1_color 
    bl draw_square
    
    add x3, x3, #4 
    ldr w10, blue1_color
    bl draw_square

    add x3, x3, #4 
    ldr w10, gray1_color
    bl draw_square
    
    add x3, x3, #4 
    ldr w10, blue0_color 
    bl draw_square
    
    add x3, x3, #4 
    bl draw_square
    
    add x3, x3, #4 
    ldr w10, gray1_color 
    bl draw_square
    
    add x3, x3, #4 
    ldr w10, gray2_color
    bl draw_square 

    add x3, x3, #4 
    ldr w10, gray1_color
    bl draw_square

    add x3, x3, #4 
    ldr w10, gray3_color 
    bl draw_square
    
    add x3, x3, #4 
    ldr w10, gray1_color
    bl draw_square
    
    /* next line (line 16, rgt -> lft) */ 
    
    sub x4, x4, #4
    add x3, x3, #16
    bl draw_square

    sub x3, x3, #4 
    bl draw_square

    sub x3, x3, #4 
    ldr w10, blue0_color 
    bl draw_square 

    sub x3, x3, #4 
    bl draw_square

    sub x3, x3, #4 
    bl draw_square

    sub x3, x3, #4 
    ldr w10, blue2_color 
    bl draw_square 

    sub x3, x3, #4 
    ldr w10, blue0_color
    bl draw_square

    sub x3, x3, #4 
    bl draw_square 

    sub x3, x3, #4 
    ldr w10, blue1_color
    bl draw_square 

    sub x3, x3, #4 
    bl draw_square 

    sub x3, x3, #4 
    bl draw_square

    sub x3, x3, #4 
    ldr w10, blue0_color
    bl draw_square 

    sub x3, x3, #4
    ldr w10, gray3_color 
    bl draw_square

    sub x3, x3, #4 
    ldr w10, blue0_color 
    bl draw_square
    
    sub x3, x3, #4 
    ldr w10, blue1_color 
    bl draw_square

    sub x3, x3, #4 
    bl draw_square 

    sub x3, x3, #4 
    bl draw_square

    sub x3, x3, #4 
    ldr w10, blue0_color 
    bl draw_square 

    sub x3, x3, #4 
    bl draw_square 

    sub x3, x3, #4 
    ldr w10, blue2_color
    bl draw_square
    
    sub x3, x3, #4 
    ldr w10, blue0_color 
    bl draw_square 

    sub x3, x3, #4 
    bl draw_square 

    sub x3, x3, #4 
    bl draw_square 
     
    sub x3, x3, #4 
    ldr w10, gray1_color 
    bl draw_square 
    
    sub x3, x3, #4 
    bl draw_square

    /* next line (line 17, lft -> rgt) */

    sub x4, x4, #4 
    sub x3, x3, #12 
    ldr w10, blue5_color 
    bl draw_square

    add x3, x3, #4 
    ldr w10, blue0_color 
    bl draw_square 

    add x3, x3, #4 
    ldr w10, blue1_color
    bl draw_square 

    add x3, x3, #4 
    ldr w10, gray3_color 
    bl draw_square 

    add x3, x3, #4 
    ldr w10, blue2_color 
    bl draw_square 

    add x3, x3, #4 
    bl draw_square
    
    add x3, x3, #4 
    ldr w10, gray3_color
    bl draw_square 
    
    add x3, x3, #4 
    ldr w10, blue1_color 
    bl draw_square 

    add x3, x3, #4 
    ldr w10, gray6_color 
    bl draw_square 

    add x3, x3, #4 
    ldr w10, blue0_color 
    bl draw_square 

    add x3, x3, #4 
    ldr w10, blue1_color 
    bl draw_square 

    add x3, x3, #4 
    ldr w10, gray3_color 
    bl draw_square 

    add x3, x3, #4 
    bl draw_square 

    add x3, x3, #4 
    ldr w10, blue1_color 
    bl draw_square 

    add x3, x3, #4 
    ldr w10, gray1_color 
    bl draw_square 

    add x3, x3, #4 
    ldr w10, blue2_color
    bl draw_square 

    add x3, x3, #4 
    ldr w10, gray1_color 
    bl draw_square 

    add x3, x3, #4 
    ldr w10, blue1_color
    bl draw_square

    add x3, x3, #4 
    ldr w10, gray3_color
    bl draw_square 

    add x3, x3, #4 
    bl draw_square 

    add x3, x3, #4 
    ldr w10, blue1_color 
    bl draw_square 

    add x3, x3, #4 
    ldr w10, blue0_color 
    bl draw_square 

    add x3, x3, #4 
    ldr w10, gray6_color 
    bl draw_square 

    add x3, x3, #4 
    ldr w10, blue1_color 
    bl draw_square 

    add x3, x3, #4 
    ldr w10, gray3_color 
    bl draw_square 

    add x3, x3, #4 
    ldr w10, blue2_color 
    bl draw_square 

    add x3, x3, #4 
    bl draw_square 

    add x3, x3, #4 
    ldr w10, gray3_color 
    bl draw_square 
    
    add x3, x3, #4 
    ldr w10, blue1_color
    bl draw_square 

    add x3, x3, #4 
    ldr w10, blue0_color 
    bl draw_square 

    add x3, x3, #4 
    ldr w10, blue5_color
    bl draw_square 

    /* next line (line 18, rgt -> lft) */ 
    
    sub x4, x4, #4 
    ldr w10, blue3_color
    bl draw_square

    sub x3, x3, #4 
    ldr w10, blue2_color 
    bl draw_square 
    
    sub x3, x3, #4 
    ldr w10, gray6_color 
    bl draw_square 

    sub x3, x3, #4 
    bl draw_square 

    sub x3, x3, #4 
    bl draw_square 

    sub x3, x3, #4 
    bl draw_square 

    sub x3, x3, #4 
    ldr w10, blue2_color 
    bl draw_square 

    sub x3, x3, #4 
    ldr w10, gray3_color 
    bl draw_square 

    sub x3, x3, #4 
    ldr w10, blue2_color
    bl draw_square 

    sub x3, x3, #4 
    ldr w10, blue1_color 
    bl draw_square 

    sub x3, x3, #4 
    ldr w10, gray3_color 
    bl draw_square 

    sub x3, x3, #4 
    ldr w10, blue2_color 
    bl draw_square 

    sub x3, x3, #4 
    bl draw_square
    
    sub x3, x3, #4 
    ldr w10, blue0_color
    bl draw_square 
    
    sub x3, x3, #4 
    ldr w10, gray5_color
    bl draw_square 

    sub x3, x3, #4 
    ldr w10, gray6_color 
    bl draw_square 

    sub x3, x3, #4 
    ldr w10, gray5_color 
    bl draw_square 

    sub x3, x3, #4 
    ldr w10, blue0_color 
    bl draw_square 

    sub x3, x3, #4 
    ldr w10, blue2_color 
    bl draw_square 

    sub x3, x3, #4 
    bl draw_square 
    
    sub x3, x3, #4 
    ldr w10, gray3_color 
    bl draw_square 

    sub x3, x3, #4 
    ldr w10, blue1_color 
    bl draw_square 

    sub x3, x3, #4 
    ldr w10, blue2_color 
    bl draw_square 

    sub x3, x3, #4 
    ldr w10, gray3_color
    bl draw_square 

    sub x3, x3, #4 
    ldr w10, blue2_color 
    bl draw_square 

    sub x3, x3, #4 
    ldr w10, gray6_color 
    bl draw_square 

    sub x3, x3, #4 
    bl draw_square 

    sub x3, x3, #4 
    bl draw_square 

    sub x3, x3, #4 
    bl draw_square
    
    sub x3, x3, #4 
    ldr w10, blue2_color
    bl draw_square 

    sub x3, x3, #4 
    ldr w10, blue3_color 
    bl draw_square 
    
    /* next line (line 19, lft -> rgt) */ 

    sub x4, x4, #4 
    ldr w10, blue4_color
    bl draw_square 

    add x3, x3, #4 
    ldr w10, blue0_color
    bl draw_square 

    add x3, x3, #4
    bl draw_square
    
    add x3, x3, #4 
    ldr w10, blue1_color 
    bl draw_square 

    add x3, x3, #4 
    bl draw_square 

    add x3, x3, #4 
    ldr w10, gray3_color 
    bl draw_square 

    add x3, x3, #4 
    bl draw_square
     
    add x3, x3, #4 
    ldr w10, blue1_color 
    bl draw_square 

    add x3, x3, #4 
    ldr w10, blue2_color
    bl draw_square 

    add x3, x3, #4 
    ldr w10, gray3_color 
    bl draw_square
     
    add x3, x3, #4 
    ldr w10, blue2_color 
    bl draw_square 
    
    add x3, x3, #4 
    ldr w10, gray6_color 
    bl draw_square 

    add x3, x3, #4 
    ldr w10, blue2_color 
    bl draw_square 

    add x3, x3, #4 
    ldr w10, gray1_color
    bl draw_square 

    add x3, x3, #4 
    mov w10, wzr
    bl draw_square 

    add x3, x3, #4 
    ldr w10, gray1_color 
    bl draw_square 

    add x3, x3, #4 
    mov w10, wzr
    bl draw_square 

    add x3, x3, #4 
    ldr w10, gray1_color 
    bl draw_square 

    add x3, x3, #4 
    ldr w10, blue2_color 
    bl draw_square 

    add x3, x3, #4 
    ldr w10, gray6_color 
    bl draw_square 

    add x3, x3, #4 
    ldr w10, blue2_color 
    bl draw_square 

    add x3, x3, #4 
    ldr w10, gray3_color 
    bl draw_square 
    
    add x3, x3, #4 
    ldr w10, blue2_color 
    bl draw_square 

    add x3, x3, #4 
    ldr w10, blue1_color 
    bl draw_square 

    add x3, x3, #4 
    ldr w10, gray3_color 
    bl draw_square 

    add x3, x3, #4 
    bl draw_square 

    add x3, x3, #4 
    ldr w10, blue1_color
    bl draw_square 

    add x3, x3, #4 
    bl draw_square 

    add x3, x3, #4 
    ldr w10, blue0_color
    bl draw_square 

    add x3, x3, #4 
    bl draw_square 

    add x3, x3, #4 
    ldr w10, blue4_color 
    bl draw_square

    
    /* next line (line 20, rgt -> lft) */

    sub x4, x4, #4 
    sub x3, x3, #28 
    ldr w10, gray1_color 
    bl draw_square 

    sub x3, x3, #4 
    ldr w10, blue2_color 
    bl draw_square 

    sub x3, x3, #4 
    ldr w10, blue3_color
    bl draw_square 

    sub x3, x3, #4 
    ldr w10, gray1_color 
    bl draw_square 
    
    sub x3, x3, #4 
    ldr w10, blue0_color 
    bl draw_square 

    sub x3, x3, #4 
    ldr w10, blue1_color
    bl draw_square 
    
    sub x3, x3, #4 
    ldr w10, gray2_color 
    bl draw_square 

    sub x3, x3, #4
    mov w10, wzr 
    bl draw_square

    sub x3, x3, #4 
    ldr w10, gray2_color 
    bl draw_square 

    sub x3, x3, #4 
    mov w10, wzr 
    bl draw_square 

    sub x3, x3, #4 
    ldr w10, gray2_color 
    bl draw_square 

    sub x3, x3, #4 
    ldr w10, blue1_color 
    bl draw_square 

    sub x3, x3, #4 
    ldr w10, blue0_color
    bl draw_square 

    sub x3, x3, #4 
    ldr w10, gray1_color 
    bl draw_square 

    sub x3, x3, #4 
    ldr w10, blue3_color 
    bl draw_square 

    sub x3, x3, #4 
    ldr w10, blue2_color 
    bl draw_square 

    sub x3, x3, #4 
    ldr w10, gray1_color 
    bl draw_square 

    /* next line (line 21, lft -> rgt) */ 
    
    sub x4, x4, #4 
    bl draw_square 

    add x3, x3, #4 
    ldr w10, blue2_color 
    bl draw_square 

    add x3, x3, #4 
    ldr w10, blue3_color 
    bl draw_square 

    add x3, x3, #20 
    ldr w10, gray4_color 
    bl draw_square 

    add x3, x3, #4 
    ldr w10, blue1_color
    bl draw_square 

    add x3, x3, #4 
    ldr w10, gray4_color 
    bl draw_square 

    add x3, x3, #20 
    ldr w10, blue3_color 
    bl draw_square 

    add x3, x3, #4 
    ldr w10, blue2_color 
    bl draw_square 

    add x3, x3, #4 
    ldr w10, gray1_color 
    bl draw_square 

    /* next line (line 22, rgt -> lft) */ 
    
    sub x4, x4, #4 
    bl draw_square 

    sub x3, x3, #4 
    ldr w10, gray6_color 
    bl draw_square 

    sub x3, x3, #4 
    ldr w10, blue4_color
    bl draw_square 

    sub x3, x3, #20 
    ldr w10, blue5_color
    bl draw_square 

    sub x3, x3, #4 
    ldr w10, gray5_color 
    bl draw_square 

    sub x3, x3, #4 
    ldr w10, blue5_color 
    bl draw_square 

    sub x3, x3, #20 
    ldr w10, blue4_color 
    bl draw_square 

    sub x3, x3, #4 
    ldr w10, gray6_color 
    bl draw_square 

    sub x3, x3, #4 
    ldr w10, gray1_color 
    bl draw_square 

    /* next line (line 23, lft -> rgt) */
    
    sub x4, x4, #4 
    bl draw_square 

    add x3, x3, #4 
    ldr w10, blue2_color 
    bl draw_square 

    add x3, x3, #4 
    ldr w10, blue4_color 
    bl draw_square 

    add x3, x3, #20 
    ldr w10, blue5_color 
    bl draw_square 

    add x3, x3, #4 
    ldr w10, blue4_color
    bl draw_square 

    add x3, x3, #4 
    ldr w10, blue5_color 
    bl draw_square 

    add x3, x3, #20 
    ldr w10, blue4_color 
    bl draw_square 

    add x3, x3, #4 
    ldr w10, blue2_color 
    bl draw_square 

    add x3, x3, #4 
    ldr w10, gray1_color 
    bl draw_square 

    /* next line (line 24, rgt -> lft) */ 
    
    sub x4, x4, #4 
    ldr w10, gray2_color
    bl draw_square 
    
    sub x3, x3, #4 
    ldr w10, gray1_color 
    bl draw_square 

    sub x3, x3, #4 
    ldr w10, blue5_color 
    bl draw_square 

    sub x3, x3, #20 
    bl draw_square 

    sub x3, x3, #4 
    ldr w10, blue3_color 
    bl draw_square 

    sub x3, x3, #4 
    ldr w10, blue5_color 
    bl draw_square 
    
    sub x3, x3, #20 
    bl draw_square 

    sub x3, x3, #4 
    ldr w10, gray1_color
    bl draw_square 

    sub x3, x3, #4 
    ldr w10, gray2_color
    bl draw_square

    /* next line (line 25, lft -> rgt) ENGINE */ 
    
    sub x4, x4, #4 
    add x3, x3, #28 
    ldr w10, blue5_color 
    bl draw_square 

    add x3, x3, #4 
    ldr w10, blue6_color
    bl draw_square 

    add x3, x3, #4 
    ldr w10, blue5_color
    bl draw_square 

    /* next line (line 26, rgt -> lft) */ 
    
    sub x4, x4, #4 
    bl draw_square 

    sub x3, x3, #4 
    ldr w10, blue6_color 
    bl draw_square 

    sub x3, x3, #4 
    ldr w10, blue5_color 
    bl draw_square 

    add x3, x3, #32 
    ldr w10, blue4_color
    bl draw_square

    sub x3, x3, #56
    bl draw_square

    /* next line (line 27, lft -> rgt) */ 
    
    sub x4, x4, #4 
    add x3, x3, #24 
    ldr w10, gray2_color
    bl draw_square 

    add x3, x3, #4 
    ldr w10, blue1_color
    bl draw_square 

    add x3, x3, #4 
    ldr w10, gray2_color 
    bl draw_square 

    /* next line (line 28, rgt -> lft) LAST LINE */ 
    
    sub x4, x4, #4 
    sub x3, x3, #4 
    ldr w10, blue0_color 
    bl draw_square 
    
    ldr x3, [sp, #32]
    ldr x4, [sp, #24]
    ldr x5, [sp, #16]
    ldr x10, [sp, #8]
    ldr x30, [sp, #0]
    add sp, sp, #40
    br x30 



propeller_frame_1:
     /* save registers */
    sub sp, sp, #32
    str x3, [sp, #24]
    str x4, [sp, #16]
    str x10, [sp, #8]
    str x30, [sp, #0]
    
    /* draw propeller */ 
    
    sub x3, x3, #41
    sub x4, x4, #43 
    ldr w10, gray5_color 
    mov x5, #4 
    bl draw_square 

    add x3, x3, #4 
    ldr w10, gray4_color 
    bl draw_square 

    add x3, x3, #4 
    mov w10, wzr
    bl draw_square 

    add x3, x3, #4 
    ldr w10, blue0_color 
    bl draw_square 

    add x3, x3, #4 
    mov w10, wzr 
    bl draw_square 

    add x3, x3, #4 
    ldr w10, gray4_color 
    bl draw_square 

    add x3, x3, #4 
    ldr w10, gray5_color 
    bl draw_square 

    add x3, x3, #32 
    ldr w10, gray5_color
    bl draw_square 

    add x3, x3, #4 
    ldr w10, gray4_color 
    bl draw_square 

    add x3, x3, #4 
    mov w10, wzr 
    bl draw_square 

    add x3, x3, #4 
    ldr w10, blue0_color 
    bl draw_square 

    add x3, x3, #4 
    mov w10, wzr 
    bl draw_square 

    add x3, x3, #4 
    ldr w10, gray4_color 
    bl draw_square 

    add x3, x3, #4 
    ldr w10, gray5_color 
    bl draw_square 

    ldr x3, [sp, #24]
    ldr x4, [sp, #16]
    ldr x10, [sp, #8]
    ldr x30, [sp, #0]
    add sp, sp, #32
    br x30

propeller_frame_2:
     /* save registers */
    sub sp, sp, #32
    str x3, [sp, #24]
    str x4, [sp, #16]
    str x10, [sp, #8]
    str x30, [sp, #0]
    
    sub x3, x3, #29
    sub x4, x4, #43 
    ldr w10, gray5_color 
    mov x5, #4
    bl draw_square 

    add x3, x3, #56
    bl draw_square

    ldr x3, [sp, #24]
    ldr x4, [sp, #16]
    ldr x10, [sp, #8]
    ldr x30, [sp, #0]
    add sp, sp, #32
    br x30

.endif
