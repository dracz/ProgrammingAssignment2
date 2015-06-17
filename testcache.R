## test the cachematrix.R

m = makeCacheMatrix(matrix(runif(10000), ncol=100))
message("solving matrix inverse for the first time...")
inv1 = cacheSolve(m)

message("solving matrix inverse for the second time...")
inv2 = cacheSolve(m)

