## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
 set <- function(y) {
   x <<- y
    inverso <<- NULL
 }
 get <- function() x
  setinverso <- function(inverse) inverso <<- inverse
  getinverso <- function() inverso
list(set = set, get = get, setinverso = setinverso, getinv = getinverso)
 }	


## Write a short comment describing this function

cacheSolve <- function(x, ...) 
{
 inverso <- x$getinverso()
  if(!is.null(inverso)) 
{
  message("Resultado invertido!")
    return(inverso)
  }
  data <- x$get()
  inverso <- solve(data, ...)
  x$setinverso(inverso)
  inverso
 }
