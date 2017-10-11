## Create the special matrix as in the example of special vector

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) m <<- inverse
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}



## Test if the inverse is already calculated, if not calculate it

cacheSolve <- function(x, ...) {
  m<-x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  Matrix <- x$get()
  m <- solve(Matrix)
  x$setinverse(m)
  m      
}
## Return a matrix that is the inverse of 'x'
