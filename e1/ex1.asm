  ; The value 1 means that we're making a system exit call. That will signal the end of our program.
  ; The value stored in ebx will be the exit status of our program.
global _start ; define entry point for program. Global - make identifier accessible to a linker
_start: ; identifier followed by a colon (:) will create a label. Labels are used to name locations in our code
  mov eax, 1 ; move integer 1 into general purpose register named eax
  mov ebx, 42 ; move integer 42 into ebx register
  sub ebx, 29 ; subtract 29 from ebx (42). The substraction is done in-place which alters the value ebx.
  ; perform an interrupt. This means that the CPU will transfer control to an interrupt handler that we've specified by
  ; the following value. in this case it's the hex value '80' which is the interrupt handler for system calls.
  ; The system call that it makes is determined by the EAX register.
  int 0x80
