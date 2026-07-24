CC = gcc
CFLAGS = -Wall -Wextra -std=c11 -g
TARGET = queue
SRC = queue.c

$(TARGET) : $(SRC)
	$(CC) $(CFLAGS) -o $(TARGET) $(SRC)

asm:
	$(CC) -Wall -Wextra -std=c11 -O0 -S -fverbose-asm $(SRC)
