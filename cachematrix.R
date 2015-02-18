#Author: Norberto R. Morales
#Purpose: To use scoping capabilities in R to store the state of a parameter for
#         future retrival
#Last Updated: 02/17/2015
# Machine(Windows 7): S/No: WB13966327
----------------------------------------------------------------------------------
## Assignment 2: Employ R scoping capabilities for computing
----------------------------------------------------------------------------------
rm(list = ls()) #clear workspace

# set working directory
setwd("C:/Users/Antigone/Dropbox/GitHub/ProgrammingAssignment2")
getwd()

----------------------------------------------------------------------------------
## Assignment 2: Caching the Inverse of a Matrix
# 
# Matrix inversion is usually a costly computation and there may be some benefit 
# to caching the inverse of a matrix rather than compute it repeatedly (there are
# also alternatives to matrix inversion that we will not discuss here). Your 
# assignment is to write a pair of functions that cache the inverse of a matrix.
# 
# Write the following functions:
#   
# makeCacheMatrix: This function creates a special "matrix" object that can cache 
# its inverse.
# 
# cacheSolve: This function computes the inverse of the special "matrix" returned
# by makeCacheMatrix above. If the inverse has already been calculated (and the 
# matrix has not changed), then the cachesolve should retrieve the inverse from
# the cache. Computing the inverse of a square matrix can be done with the 
# solve function in R. For example, if X is a square invertible matrix, then
# solve(X) returns its inverse.
# 
# For this assignment, assume that the matrix supplied is always invertible.
----------------------------------------------------------------------------------


## This function creates a 'matrix' and makes a cache of its inverse.

makeCacheMatrix <- function(x = matrix()) {

}


## This function retrives the calculated inverse of the 'matrix'

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  
}



# end of this file
----------------------------------------------------------------------------------
  
