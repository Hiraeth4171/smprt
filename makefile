CC = gcc
FLAGS = -Wall -Wextra

HOST = bin/smprt
BUZZ = bin/buzzer
# include all .c files in the src/host directory
HOST_SRCS = $(wildcard src/host/*.c)
# replace the .c extension with .o for each source file
HOST_OBJS = $(HOST_SRCS:.c=.o)

BUZZ_SRCS = $(wildcard src/client/*.c)
BUZZ_OBJS = $(BUZZ_SRCS:.c=.o)

CFLAGS = $(shell pkg-config --cflags raylib libuv)
LIBS = $(shell pkg-config --libs --static raylib libuv)

all: setup $(HOST) $(BUZZ)

setup:
	mkdir -p bin

$(HOST): $(HOST_OBJS)
	$(CC) $(FLAGS) -o $@ $^ $(LIBS)

$(BUZZ): $(BUZZ_OBJS)
	$(CC) $(FLAGS) -o $@ $^ $(LIBS)

%.o: %.c
	$(CC) $(FLAGS) $(CFLAGS) -c $< -o $@


clean:
	rm -f $(HOST_OBJS) $(BUZZ_OBJS) $(HOST) $(BUZZ)
