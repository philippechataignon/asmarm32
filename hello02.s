.text 

.global main

main:
      # Load all the arguments for write
      mov r7,#4
      mov r0,#1
      ldr r1,=String
      mov r2,#LenString
      svc #0

      # Need to exit the program 
      mov r7,#1
      mov r0,#0
      svc #0

.data 

String: .ascii "Hello World\n"
LenString = . - String
