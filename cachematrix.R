## These functions provide a mechanism for computing and caching
## the inverse of a matrix

## This function provides a special kind matrix that can cache it's inverse 

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function(y) {
        x <<- y
        inv <<- NULL
    }
    get <- function() x
    setinv <- function(invrs) inv <<- invrs
    getinv <- function() inv
    list(set = set, get = get,
         setinv = setinv,
         getinv = getinv)
}


## This function is used to computes the inverse of the special matrix defined above.
## If the inverse has already been cached and the matrix has not changed, 
## then the cached version is returned

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    inv <- x$getinv()
    if(!is.null(inv)) {
        message("returning cached data")
        return(inv)
    }
    data <- x$get()
    inv <- solve(data, ...)
    x$setinv(inv)
    inv
}
