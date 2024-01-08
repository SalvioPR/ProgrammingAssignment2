## Put comments here that give an overall description of what your
## functions do

## Creates a special "matrix" object taht can cache its inverse.

makeCacheMatrix <- function(x = matrix()) 
{inv <- NULL
set <- function(y){
x<<-y 
inv<<-NULL
}
get<-function()x
setInverse<-function(inverse)inv<<-inverse
getInverse<-function() inv
list(set=set, get=get,
setInverse=setInverse,
getInverse=getInverse)
}


## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
inv <- x$getinv()
if(!is.null(inv)){
  message("getting cached result")
  return(inv)
}
data<-x$get()
inv<-solve(data, ...)
x$setinv(inv)
inv
}
