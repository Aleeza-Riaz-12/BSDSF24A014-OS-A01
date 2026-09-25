CC = gcc
CFLAGS = -Wall -Wextra -I../include

OBJDIR = ../obj
BINDIR = ../bin
TARGET = $(BINDIR)/client

SOURCES = main.c mystrfunctions.c myfilefunctions.c
OBJECTS = $(patsubst %.c,$(OBJDIR)/%.o,$(SOURCES))

.PHONY: all clean

all: $(TARGET)

$(TARGET): $(OBJECTS) | $(BINDIR)
	$(CC) $(OBJECTS) -o $(TARGET)

$(OBJDIR)/%.o: %.c | $(OBJDIR)
	$(CC) $(CFLAGS) -c $< -o $@

$(OBJDIR):
	mkdir -p $(OBJDIR)

$(BINDIR):
	mkdir -p $(BINDIR)

clean:
	rm -f $(OBJECTS) $(TARGET)
