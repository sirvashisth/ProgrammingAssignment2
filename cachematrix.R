## Put comments here that give an overall description of what your
## functions do

## initialize i as NULL -> it will hold value of matrix inverse


makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        
        set <- function(y) {     ##define the set function, it is to assign new value of matrix,
                x <<- y         ## x is matrix here and y is the new value of matrix
                i <<- NULL      ## i will set to null if there will be a new matrix
        }
        get <- function() x     ## defined the get function which returns the value of teh matrix argument
        setInverse <- function(inverse) i <<- inverse   ## assign the value of i in the parent environment 
        getInverse <- function()i                       ## get the value of i where called

        list(set = set, get = get, setInverse = setInverse, getInverse = getInverse) ## list is defined to access the items using $ 
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i <- x$getInverse()
        if(!is.null(i)) {
                message("Getting cached data")
                return(inv)
        }
        data <- x$get()
        i <- solve(data, ...)
        x$setInverse(i)
        i
}