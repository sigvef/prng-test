CC = gcc
CFLAGS = --std=c99 -O3

prng: main.o
	$(CC) $(CFLAGS) -o prng prng.o

main.o:
	$(CC) $(CFLAGS) -c prng.c

.PHONY: run
run: prng
	./prng

.PHONY: test
test: prng
	./prng | dieharder -g 200 -a
