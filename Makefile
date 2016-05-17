all : findpath

findpath : src/findpath.cpp include/stlastar.h
	g++ -O2 -Wall -Wextra -DDEBUG_LISTS=1 -I'include' src/findpath.cpp -o findpath
	
clean:
	rm -f findpath



