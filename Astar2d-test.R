
# create a 2d test matrix on which to try the A* algorithm
m <- matrix(data=1,nrow=20,ncol=20)
diag(m) <- 9
m[10,10] <- 4
m[1,1] <- 5
m[20,20] <- 5
m[1,20] <- 0
m[20,1] <- 0

system('PKG_CXXFLAGS="-I./include" R CMD SHLIB Rsrc/findpath_R_2d.cpp -o findpath.so')

dyn.load('findpath.so')
# getLoadedDLLs()

.C('R_FindPath_2d',as.integer(m))

dyn.unload('findpath.so')
# getLoadedDLLs()
