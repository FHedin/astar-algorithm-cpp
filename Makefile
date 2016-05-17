#################################################################
########################   MakeVars   ###########################
#################################################################

CC=g++

CC_OPT=-I"./include" -Wall -Wextra -march=native -g -O2

LD_OPT=-lm

MKDIR=mkdir -p ./obj

TARGET=findpath

SRC=$(wildcard ./src/*.cpp)

OBJ=$(patsubst ./src/%.cpp,./obj/%.o,$(SRC))

#################################################################
########################   Makefile   ###########################
#################################################################

all:$(TARGET)
	        @echo "Compilation Success"

$(TARGET):Makefile

./obj/%.o:./src/%.cpp
	@$(MKDIR)
	$(CC) $(CC_OPT) -c $< -o $@

$(TARGET):$(OBJ)
	$(CC) $(CC_OPT) $(OBJ) -o $@ $(LD_OPT)

clean:
	rm -f $(TARGET) ./obj/*.o


