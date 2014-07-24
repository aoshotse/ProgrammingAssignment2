## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

		m <- NULL    ##initiate m as NULL value
		
		
        set <- function(y) {    ##set values to x and m such that the values
                x <<- y         ##can be updated AFTER the function is defined
                m <<- NULL
        }
		
		
        get <- function() {     ##"get", "setiverse" andgetinverse are assigned functions 
		x						##so that they can be called and passed values
								
		}
		
		
        setinverse <- function(solve) {		##any matrix passed to setinverse when
			m <<- solve						##it is called can be solved and the value
											##of m will be updated
		}
		
		
        getinverse <- function() {
		m
		
		}
		
		
        list(set = set, get = get,		##a list is returned so that all of the variables
             setinverse = setinverse,	##in makeCacheMatrix can be referenced
             getinverse = getinverse)

}


## Write a short comment describing this function

cacheSolve <- function(x) {
        ## Return a matrix that is the inverse of 'x'
		
		m <- x$getinverse()
		
        if(!is.null(m)) {							##Determines if m is not null (i.e. inverse has been calculated)
                message("getting cached data")		##If not, returns value of m
                return(m)
        }
		
        data <- x$get()			##if inverse has not been calculated, matrix is assigned to "data" by referencing x$get()
		
        m <- solve(data)	##calculates inverse of matrix
		
        x$setinverse(m)		##value of inverse updated and cached
		
        m					##value of inverse returned
}
