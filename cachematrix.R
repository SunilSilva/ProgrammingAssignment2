## Put comments here that give an overall description of what your
## functions do:

## the function is supposed to calculate the inverse of a given matrix
## the first function returns a list with four functions being elements
## the second function check any previous calculation and the calculates the 
## inverse if it is null

## Write a short comment describing this function:
## this function returns a list with four elements

makeCacheMatrix <- function(x = matrix()) {
        m<-NULL   # inversion result is stored
        
        # A setter function holds the objects from makeCacheMatrix
        set<-function(y){
                x<<-y
                ##initialises xinv to null
                m<<-NULL
        }
        # return the input matrix
        get<-function() x 
        # set the inversed matrix
        setmatrix<-function(solve) m<<- solve
        # return the inversed matrix
        getmatrix<-function() m
        # return a list with elements being four functions
        list(set=set, 
             get=get,
             setmatrix=setmatrix,
             getmatrix=getmatrix)
}




## Write a short comment describing this function:

## this function check the existing calculation; if null then calculates
## inverse of the matrix

## returns the inverse of a given matrix

cacheSolve <- function(x=matrix(), ...) {
        # get the inversed matrix
        m<-x$getmatrix()
        # check inverse is null
        if(!is.null(m)){
                message("getting cached data")
                return(m)
        }
        # get matrix  
        matrix<-x$get()
        # use R function solve to get the inverse
        m<-solve(matrix, ...)
        # set the result
        x$setmatrix(m)
        #return the results
        m
}

## example
##a<-makeCacheMatrix(matrix(2:5,2,2))
##cacheSolve(a) 