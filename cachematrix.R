##the first function creates the matrix, 
## functions do

#first sets the values of the matrix, 
#gets the value of the matrix
#sets the inverse function to get the inverse matrix
#gets the value of the inverse 

makeCacheMatrix <- function(x = matrix()) {

  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinv <- function(inverse) m <<- inverse
  getinv <- function() m
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}


## This next function will return the inverse matrix but it checks if the inverse of the matrix
## was already calculated otherwise it will be returned ... 

cacheSolve <- function(x, ...) {
        ## Return the inverse of 'm'matrix
  m <- x$getinv()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinv(m)
  m
  
  }



