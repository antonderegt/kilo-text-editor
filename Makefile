CFLAGS=-c -Wall -Wextra -pedantic -std=c99

all: program

program: src/main.o src/highlight.o src/terminal.o
	$(CC) src/main.o src/highlight.o src/terminal.o -o avi

main.o: src/main.c
	$(CC) $(CFLAGS) src/main.c

highlight.o: src/highlight.c
	$(CC) $(CFLAGS) src/highlight.c

terminal.o: src/terminal.c
	$(CC) $(CFLAGS) src/terminal.c

format:
	clang-format -i src/*.c

clean:
	rm -rf src/*.o && rm avi
