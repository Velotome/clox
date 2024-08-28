CC = gcc
CFLAGS = -Wall -Werror -Wmissing-prototypes

SOURCEDIR = src
BUILDDIR = build

EXECUTABLE = clox
SOURCES = $(wildcard src/*.c)
OBJS = $(patsubst $(SOURCEDIR)/*.c, $(BUILDDIR)/%.o,$(SOURCES))

all: dir $(BUILDDIR)/$(EXECUTABLE)

dir:
	mkdir -p $(BUILDDIR)

$(BUILDDIR)/$(EXECUTABLE): 
	$(CC) $(CFLAGS) $(OBJS) -o $@

