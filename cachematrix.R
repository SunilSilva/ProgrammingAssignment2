## Put comments here that give an overall description of what your
## functions do:

## the function is supposed to calculate the inverse of a given matrix
## the first function returns a list with four functions being elements
## the second function check any previous calculation and the calculates the 
## inverse if it is null

## Write a short comment describing this function:
## this function returns a list with four elements

makeCacheMatrix <- function(x = matrix()) {
        m<-NULL
        set<-function(y){
                x<<-y
                m<<-NULL
        }
        get<-function() x
        setmatrix<-function(solve) m<<- solve
        getmatrix<-function() m
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
        m<-x$getmatrix()
        if(!is.null(m)){
                message("getting cached data")
                return(m)
        }
        matrix<-x$get()
        m<-solve(matrix, ...)
        x$setmatrix(m)
        m
}

##a<-makeCacheMatrix(matrix(2:5,2,2))
##cacheSolve(a) 