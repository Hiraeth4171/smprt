CC = gcc
FLAGS = -Wall -Wextra
TARGET = main

$(TARGET):
	$(CC) $(FLAGS) -o bin/$(TARGET) src/$(TARGET).c 

clean:
	rm -f $(TARGET)
