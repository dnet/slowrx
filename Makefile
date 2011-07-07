CC = gcc

CFLAGS = -Wall -Wextra -std=gnu99 -pedantic -g

OFLAGS = -O3

all: slowrx


slowrx: common.h common.c slowrx.c gui.c video.c sync.c vis.c modespec.c
	$(CC) $(CFLAGS) $(OFLAGS) -lm -lfftw3 common.c modespec.c gui.c video.c vis.c sync.c slowrx.c -o slowrx `pkg-config --cflags --libs gtk+-2.0` -lgthread-2.0 -lpnglite

clean:
	rm -f *.o