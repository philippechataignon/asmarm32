/* -- hello01.s */
.global puts
.global main

.text
main:
            ldr r1,=return          /*   r1 ← &address_of_return */
            str lr,[r1]             /*   *r1 ← lr */

            ldr r0,=greeting        /* r0 ← &address_of_greeting */
                                    /* First parameter of puts */
            bl puts                 /* Call to puts */
                                    /* lr ← address of next instruction */
            ldr r1,=return          /* r1 ← &address_of_return */
            ldr lr,[r1]             /* lr ← *r1 */
            bx  lr                  /* return from main */

.data
.balign 4
greeting:   .asciz "Hello world"
return:     .word 0
