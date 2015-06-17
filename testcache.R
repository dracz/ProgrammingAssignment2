## test the cachematrix.R

m = makeCacheMatrix(matrix(runif(10000), ncol=100))
inv = cacheSolve(m)
inv2 = cacheSolve(m)