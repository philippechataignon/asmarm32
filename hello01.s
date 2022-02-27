/* -- hello01.s */
.syntax unified
.code 32
.global puts
.global main

.text
main:
            push {lr}
            ldr r0,=greeting        /* r0 ← &address_of_greeting */
                                    /* First parameter of puts */
            bl puts                 /* Call to puts */
                                    /* lr ← address of next instruction */
            pop {lr}                /* lr ← *r1 */
            bx  lr                  /* return from main */

.data
.balign 4
greeting:   .asciz "Hello world!"
