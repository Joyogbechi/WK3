## set the value of the matrix  
## get the value of the matrix
## set the value of the inverse
## get the value of the inverse

## this function creates a special object that stores a matrix and caches its inverse

makeCacheMatrix <- function(x = matrix()) {

       m <- NULL
       set<- function(y) {
         x <<- y
         m <<- NULL
       }
       get<-function() x
       setinverse <- function(inverse) m <<- inverse
       getinverse <- function() m
       list(set = set,
            get = get,
            setinverse = setinverse,
            getinverse =getinverse)
       }


## This function computes the inverse of the matrix returned by makeCacheMatrix

    cacheSolve <- function(x, ...) {
              m<- x$getinverse()
              if(!is.null(i)) {
                    message ("getting cached data")
                    return(i)
  }
              data <- x$get()
              m <- solve(data, ...)
              x$setinverse(i)
              m
}
