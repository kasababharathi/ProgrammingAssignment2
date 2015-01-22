## caching the inverse of a matrix

## makeCacheMatrix function creates a special "matrix" object that can cache its inverse.
#1.  set the value of the matrix
#2.  get the value of the matrix
#3.  set the value of the inverse
#4.  get the value of the inverse

makeCacheMatrix <- function(x = matrix()) 
{
        i <- NULL
        set <- function(y) 
        {
                x <<- y
                i <<- NULL
        }
        get <- function() x
        setInverse <- function(Inverse) i <<- Inverse
        getInverse <- function() i
        list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)
 }