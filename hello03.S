/* -- hello01.s */
.syntax unified
.code 32
.global printf
.global main

exit = 1

.text
main:
            push {lr}
            ldr r0,=greeting        /* r0 ← &address_of_greeting */
                                    /* First parameter of puts */
            bl printf                 /* Call to puts */
                                    /* lr ← address of next instruction */
            pop {lr}                /* lr ← *r1 */
            
            mov r7,#exit
            mov r0,#0             // return code
            svc #0

.data
.balign 4
greeting:   .asciz "Hello world!\n"
