cc=cc
cflags=-O3 -s

make.exe:main.c
	$(cc) main.c -o make.exe $(cflags)
clean:
	rm make.exe