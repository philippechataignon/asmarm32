/* -- sum02.s */

/* Ensure code is 4 byte aligned */
.global main
.balign 4

main:
    ldr r0,=myvar1      /* r1 ← &myvar1 */
    ldr r0,[r0]         /* r1 ← *r1 */
    ldr r1,=myvar2      /* r2 ← &myvar2 */
    ldr r1,[r1]         /* r2 ← *r2 */
    add r0,r0,r1        /* r0 ← r1 + r2 */
    bx lr

.data
.balign 4
myvar1:
    .word 3
myvar2:
    .word 4
