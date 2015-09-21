## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function will provide the inverse of 'x' the matrix provided

makeCacheMatrix <- function(x = matrix()) {


    inv <- NULL

    set <- function(y) {

        x <<- y

        inv <<- NULL

    }
    

    get <- function() x
    

    setinverse <- function(inverse) inv <<- inverse

    getinverse <- function() inv

    list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)




}


## Write a short comment describing this function
## This function will invert the matrix of 'x' and will also notify if the output is actually cached. 

cacheSolve <- function(x, ...) {
        ## Outputs inverse matrix of 'x'
        inv <- x$getinverse()

    if(!is.null(inv)) {

        message("getting cached data")

        return(inv)

    }

    data <- x$get()

    inv <- solve(data)

    x$setinverse(inv)

    inv

}
