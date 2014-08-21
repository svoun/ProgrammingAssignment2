setwd("C:/Users/Silue/ProgrammingAssignment2")
## Write a pair of functions that cache the inverse of a matrix
## makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse
## This function is a list containing a function to
##set the value of the matrix
## get the value of the matrix
## set the value of the inverse
## get the value of the inverse
makeCacheMatrix<-function(x=matrix()){
mi<-NULL
set<-function(y){
x<<-y
mi<<-NULL
}
get<-function() x
setsolve<-function(solve) mi<<-solve
getsolve<-function() mi
list(set=set, get=get,
setsolve=setsolve,
getsolve=getsolve)
}
## cacheSolve:this function computes the inverse of the special "matrix" returned by makeCacheMatrix above. it used to get the cache of matrix
cacheSolve<-function(x, ...){
mi<-x$getsolve()
if(!is.null(mi)){
message("getting cached data")
return(mi)
}
data<-x$get()
mi<-solve(data, ...)
x$setsolve(mi)
mi
}
x<-matrix(1:4, ncol=2)
y<-makeCacheMatrix(x)
cacheSolve(y)
