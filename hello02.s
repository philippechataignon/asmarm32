.global main

write = 4
stdout = 1
exit = 1

.text 
main:
      // Load all the arguments for write
      mov r7,#write
      mov r0,#stdout
      ldr r1,=String
      mov r2,#LenString
      svc #0

      // Need to exit the program 
      mov r7,#exit
      mov r0,#0             // return code
      svc #0

.data 

String: .ascii "Hello World\n"
LenString = . - String
.section	.note.GNU-stack,"",%progbits
