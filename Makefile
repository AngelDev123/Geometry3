
.PHONY:all clean
CC=g++
CFLAGS=-Wall -Werror
SD=src/
OD=build/
EXECUTABLE=bin/geometry.exe
all: $(EXECUTABLE)
	
$(EXECUTABLE): $(OD)main.o $(OD)circle.o
        $(CC) $(CFLAGS) -o $(EXECUTABLE) $(OD)main.o $(OD)circle.o -lm
$(OD)main.o: $(SD)main.cpp
        $(CC) $(CFLAGS) -c -o $(OD)main.o $(SD)main.cpp -lm
$(OD)circle.o: $(SD)circle.cpp
        $(CC) $(CFLAGS) -c -o $(OD)circle.o $(SD)circle.cpp -lm
clean:
        rm -rf $(EXECUTABLE) $(OD)*.o
	

