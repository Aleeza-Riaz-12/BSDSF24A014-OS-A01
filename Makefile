CC = gcc

CFLAGS = -Wall -Wextra -Iinclude -fPIC

SRC_DIR = src
OBJ_DIR = obj
LIB_DIR = lib
BIN_DIR = bin

STR_OBJ = $(OBJ_DIR)/mystrfunctions.o
FILE_OBJ = $(OBJ_DIR)/myfilefunctions.o

LIB = $(LIB_DIR)/libmyutils.so
TARGET = $(BIN_DIR)/client_dynamic

all: $(TARGET)

$(OBJ_DIR)/mystrfunctions.o: $(SRC_DIR)/mystrfunctions.c
	mkdir -p $(OBJ_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

$(OBJ_DIR)/myfilefunctions.o: $(SRC_DIR)/myfilefunctions.c
	mkdir -p $(OBJ_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

$(LIB): $(STR_OBJ) $(FILE_OBJ)
	mkdir -p $(LIB_DIR)
	$(CC) -shared -o $(LIB) $(STR_OBJ) $(FILE_OBJ)

$(TARGET): $(LIB) $(SRC_DIR)/main.c
	mkdir -p $(BIN_DIR)
	$(CC) -Wall -Wextra -Iinclude $(SRC_DIR)/main.c -L$(LIB_DIR) -lmyutils -o $(TARGET)

clean:
	rm -f $(OBJ_DIR)/*.o
	rm -f $(LIB_DIR)/libmyutils.so
	rm -f $(BIN_DIR)/client_dynamic
