## These function caches the calculation of an inversion of a matrix. It is for the Coursa R Programming course.
## The assingmnet focuses on lexical scoping

## Caches a matrix

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setmatrix <- function(inverse) m <<- inverse
    getmatrix<- function() m
    list(set = set, get = get,
    setmatrix = setmatrix,
    getmatrix = getmatrix)
}

## Function to solve. Tests to see if inversion already exists

cacheSolve <- function(x, ...) {
    m <- x$getmatrix()
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setmatrix(m)
    m
}
