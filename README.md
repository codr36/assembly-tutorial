Made by following https://www.youtube.com/watch?v=wLXIWKUWpSs


# How-to

## Prerequisites:
> nasm - sudo apt install nasm
## To assemble into machine code use:
> nasm -f elf32 ex1.asm -u ex1.o
* elf - executable and linking format ELF is the executable format used by Linux.
## To build an executable from the object file:
> ld -m elf_i386 ex1.o -o ex1
## To run the program:
> ./ex1
## To check for exit status:
> echo $?

https://stackoverflow.com/questions/6834487/what-is-the-dollar-question-mark-variable-in-shell-scripting