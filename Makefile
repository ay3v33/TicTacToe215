# Makefile for TicTacToe game

CC=g++
CFLAGS=--std=c++11
EXE=tictactoe

# Default target
all: $(EXE)

# Compile board.cpp to board.o
board.o: obj src/board.cpp inc/board.hpp | obj
	$(CC) $(CFLAGS) -c src/board.cpp -o obj/board.o

# Compile main.cpp to main.o
main.o: obj src/main.cpp inc/main.hpp | obj
	$(CC) $(CFLAGS) -c src/main.cpp -o obj/main.o

# Create obj directory if it doesn't exist
obj:
	mkdir -p obj

# Link object files to create the executable
$(EXE): main.o board.o
	$(CC) $(CFLAGS) -o $(EXE) obj/*.o

# Clean executable and obj directory
clean:
	rm -rf $(EXE) obj

