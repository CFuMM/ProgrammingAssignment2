@@ -1,15 +1,49 @@
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## MakeCacheMatrix and cachesolve funktions that allow the cacheing of inverted matrixes 
## to allow for saving of computational power, by returning the cached answer if it has been done before.
## in this case its a inverse calculaiton of a matrix.
##where we will store the inverted matrix cashed
makeCacheMatrix <- function(x = matrix()) {
      t <- NULL
    
##set the other dimetions      
      set <- function(h) {
        x <<- h
        t <<- NULL
    }
  
##retriving the underlying value
      get <- function() { 
        x
    }
    
##retriving the underlying value
      set.solve <- function(solvet) {
        t <<- solvet
    }

##retriving the cashed matrix
      get.solve <- function() {
        t
    }
##The list of functions needed     
      list(set = set, get = get, set.solve = set.solve, get.solve = get.solve)
}


## Write a short comment describing this function

##Takes the matrix made by makeCacheMatrix function and checks if the matrix has been cached
##if the matrix has been cached, it returns the cached values for x; if not, then it 
##takes these values in x and solves them and stores this data as t, and then returns this back
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
##loads t
    t <- x$get.solve()
##checks if the value, and if it is prints message and t.
    if(!is.null(t)) {
      message("is getting the cached data")  
      return(t)
    }
##If not then solves new data for t and then prints it.
    new.data <- x$get()
    t <- solve(new.data, ...)
    x$set.solve(t)
    t
}
 No newline at end of file

