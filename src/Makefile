CC = gcc
CFLAGS = -Wall -Wextra -I../include

AR = ar
ARFLAGS = rcs

OBJDIR = ../obj
LIBDIR = ../lib
BINDIR = ../bin

LIBRARY = $(LIBDIR)/libmyutils.a
TARGET = $(BINDIR)/client_static

UTILITY_SOURCES = mystrfunctions.c myfilefunctions.c
UTILITY_OBJECTS = $(patsubst %.c,$(OBJDIR)/%.o,$(UTILITY_SOURCES))

MAIN_OBJECT = $(OBJDIR)/main.o

.PHONY: all clean

all: $(TARGET)

$(LIBRARY): $(UTILITY_OBJECTS) | $(LIBDIR)
	$(AR) $(ARFLAGS) $@ $^
	ranlib $@

$(TARGET): $(MAIN_OBJECT) $(LIBRARY) | $(BINDIR)
	$(CC) $(MAIN_OBJECT) $(LIBRARY) -o $@

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
	rm -f $(TARGET)CC = gcc
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
