# This  function will create a matrix in order t cache its inverse 
makeCacheMatrix <- function(x = matrix()) {
  
  #initiallizating variable which will hold cache
  cachedm <- NULL
  
  #seting matrix values
  set <- function(nvalue){
  
    #assign the input value
    x <<- nvalue
    
    #re-initialize cachedm to null since matix value was assigend.
    cachedm <<- NULL
  }
  
  #returns the matrix
  get <- function(){
    x
  }
  #assign the inverse matrix to cachedm
  setmatrix <- function(solve){
    cached <<- solve
  }
  # returns inverse of matrix x cached in cachedm
  getmatrix <- function(){
    cachedm
  }
  #return the list of the elements
  list(set = set, get = get, setmatrix = setmatrix,
       getmatrix= getmatrix)
}



#This function will compute the inverse of the matrix created by makeCacheMatrix.
cacheSolve <- function(x, ...) {
    # get cached matrix
    cahcedm <- x$getmatrix()
    # if value exist in cache return it
    if(!is.null(cachedm)){
      message("getting cached data")
      return(cachedm)
    }
    # else calculate the inverse and store in cache
    data <- x$get()
    cachedm <- solve(data, ...)
    x$setmatrix(cachedm)
    
    #return the inverse of the matrix
    cachedm
}
