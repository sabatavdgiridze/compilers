# Define the compiler
CC = gcc

# Define the source files
SOURCES = $(wildcard *.c)


# Automatically generate the list of object files
OBJECTS = $(SOURCES:.c=.o)

# The target executable name
TARGET = clox_app

# The default rule to make
all: $(TARGET)

# Rule to compile source files into object files
%.o: %.c
	$(CC) -c $< -o $@

# Rule to link the program
$(TARGET): $(OBJECTS)
	$(CC) -o $(TARGET) $(OBJECTS)


# Clean the build
clean:
	rm -f $(OBJECTS) $(TARGET)
