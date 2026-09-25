CC = gcc
CFLAGS = -Wall -Wextra -Iinclude

SRC_DIR = src
BIN_DIR = bin

SOURCES = $(SRC_DIR)/mystrfunctions.c \
          $(SRC_DIR)/myfilefunctions.c \
          $(SRC_DIR)/main.c

TARGET = $(BIN_DIR)/client

all: $(TARGET)

$(TARGET): $(SOURCES)
	$(CC) $(CFLAGS) $(SOURCES) -o $(TARGET)

clean:
	rm -f $(TARGET)

run: $(TARGET)
	./$(TARGET)
