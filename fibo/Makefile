all: fibo

fibo.s: fibo.c
	cc -O0 -m32 -S fibo.c

fibo.o: fibo.c
	cc -O0 -c -m32 -g fibo.c

fibo: fibo.o fibo.s
	cc -O0 -m32 -g -o fibo fibo.o

clean:
	rm -f fibo.s fibo.o fibo

objdump: fibo.o
	objdump -d -M intel -S fibo.o