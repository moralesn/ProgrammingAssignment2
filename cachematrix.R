      ## Author: Norberto R. Morales
      ## Project: Assignment 2: Caching the Inverse of a Matrix
      ## Purpose: Employ scoping capabilities in R to store information for
      #           future retrival. Useful for optimization in statistical 
      #           analysis and computationally intensive tasks where steps do 
      #           not have to be completed repeatedly.
      ## Last Updated: 02/22/2015
      ## Machine(Windows 7): S/No: WB13966327
      ##------------------------------------------------------------------------
      # clear workspace
rm(list = ls()) 

      # set working directory
setwd("C:/Users/Antigone/Dropbox/GitHub/ProgrammingAssignment2")
getwd()
      ##------------------------------------------------------------------------
      ## Assignment 2: Caching the Inverse of a Matrix
      ##------------------------------------------------------------------------
#
#           Matrix inversion is usually a costly computation and there may be 
#     some benefit to caching the inverse of a matrix rather than compute it 
#     repeatedly (there are also alternatives to matrix inversion that we will 
#     not discuss here). Your assignment is to write a pair of functions that
#     cache the inverse of a matrix.
#           
      ## Write the following functions:
#             
#           makeCacheMatrix: This function creates a special "matrix" object that 
#     can cache its inverse.
# 
#           cacheSolve: This function computes the inverse of the special "matrix" 
#     returned by makeCacheMatrix above. If the inverse has already been 
#     calculated (and the matrix has not changed), then the cachesolve should 
#     retrieve the inverse from the cache. Computing the inverse of a square 
#     matrix can be done with the solve function in R. For example, if X is a
#     square invertible matrix, then solve(X) returns its inverse.
# 
#     For this assignment, assume that the matrix supplied is always invertible.
      ##------------------------------------------------------------------------
      
      ## This function creates a 'matrix' object and generates a cache of 
      ## its inverse. Here for example the matrix object will be called 'x' 
makeCacheMatrix <- function(x = matrix()) {
            invofx <- NULL
                  set <- function(z) {
                        x <<- z; # <<- assignment operator to keep internal member
                                 #functions isolated from global environment.                        # outside environment. 
                        invofx <<- NULL;
                  }
            get <- function() return(x);             # get matrix 'x'
            setinv <- function(inv) invofx <<- inv;  # calculate inverse of 'x'
            getinv <- function() return(invofx);     # get inverse of 'x'
            return(list(set = set, get = get, setinv = setinv, getinv = getinv))
}

      ## This function computes the inverse of 'x' returned by the 
      ## -makeCacheMatrix- function above. If the inverse of 'x' has already
      ## been computed and remains the same, then the function should retrieve
      ## the inverse from the previously generated cache.
cacheSolve <- function(x, ...) {
            invofx <- x$getinv()              # get inverse of 'x'
                  if(!is.null(invofx)) {      # if calculated retrive from cache
                        message("Retrieve the inverse from the cache...")
                        return(invofx)        # return inverse of 'x'
                  }
            data <- x$get()                   # if diff. get matrix 'x' 
            invofx <- solve(data, ...)        # calculate inverse of 'x'
            x$setinv(invofx)
            return(invofx)                    # return inverse of 'x'
}
      
      ## Create an invertible (non-singular) square matrix called 'x'
x<- matrix(c(1,2,3,0,1,4,5,6,0), nrow=3, ncol=3)
x
      ## Test functions 
testCache <- makeCacheMatrix(x)
testInverse <- cacheSolve(testCache)
testInverse
      
      ## end of file.
      ##------------------------------------------------------------------------
      
      
      