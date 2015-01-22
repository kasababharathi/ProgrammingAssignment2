## `cacheSolve` function computes the inverse of the special "matrix" returned by `makeCacheMatrix` above. 
##If the inverse has already been calculated (and the matrix has not changed), then`cacheSolve` should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        i <- x$getInverse()
        if(!is.null(i)) {
        	 message("getting cached data")
                return(i)
        }
        matrix <- x$get()
        i <- solve(matrix, ...)
        x$setInverse(i)
        i
}
