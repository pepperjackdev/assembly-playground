# Simple Assembly Playground
Welcome to my Assembly Playground: this is a repository where you'll find a basic yet growing collection 
of x86 Assembly programs. Authored by a beginner, this project represents a personal collection of 
assembly snippets and straightforward scripts, created to be shared with anyone interested in exploring 
the world of assembly language.

## Compiling sources
To compile a source code file, you can use [NASM](https://www.nasm.us/) compiler.
First, you have to compile your *.asm file:
```sh
nasm -f elf myfile.asm # Generates a "myfile.o" file
```
Then, you have to link your *.o file (generated by the command above):
```sh
ld -m elf_i386 -s -o executable source.o # Generates a "myfile" file without any extension.
```
To run your new compiled and linked file use:
```sh
./myfile
```
