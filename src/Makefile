CC = gcc
CFLAGS = -Wall -Wextra -I../include -fPIC

OBJDIR = ../obj
LIBDIR = ../lib
BINDIR = ../bin

LIBRARY = $(LIBDIR)/libmyutils.so
TARGET = $(BINDIR)/client_dynamic

UTILITY_SOURCES = mystrfunctions.c myfilefunctions.c
UTILITY_OBJECTS = $(patsubst %.c,$(OBJDIR)/%.o,$(UTILITY_SOURCES))

MAIN_OBJECT = $(OBJDIR)/main.o

.PHONY: all clean

all: $(TARGET)

$(LIBRARY): $(UTILITY_OBJECTS) | $(LIBDIR)
	$(CC) -shared -o $@ $^

$(TARGET): $(MAIN_OBJECT) $(LIBRARY) | $(BINDIR)
	$(CC) $(MAIN_OBJECT) -L$(LIBDIR) -lmyutils -Wl,-rpath,'$$ORIGIN/../lib' -o $@

$(OBJDIR)/%.o: %.c | $(OBJDIR)
	$(CC) $(CFLAGS) -c $< -o $@

$(OBJDIR):
	mkdir -p $(OBJDIR)

$(LIBDIR):
	mkdir -p $(LIBDIR)

$(BINDIR):
	mkdir -p $(BINDIR)

clean:
	rm -f $(OBJDIR)/*.o
	rm -f $(LIBRARY)
	rm -f $(TARGET)
