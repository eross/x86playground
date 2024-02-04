all: simple multiply

simple: simple.o
	ld -m elf_i386 -g -o simple simple.o

simple.o: simple.s
	nasm -f elf32 -g -o simple.o simple.s

multiply: multiply.o
	ld -m elf_i386 -g -o multiply multiply.o

multiply.o: multiply.s
	nasm -f elf32 -g -o multiply.o multiply.s


clean:
	rm -f simple.o simple multply.o multiply


