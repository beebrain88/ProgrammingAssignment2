## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##Creates a Matrix to cache values- sets m to Null to allow second enter to continue
##to enter the previously inverted matrix

##need to enter functions as follows:
## n<- makeCacheMatrix(matrix(data, nrow=i, ncol=i)) ##must be a square matrix

makeCacheMatrix <- function(x = matrix()) {
	m<-NULL
	set<- function(y) {
		x<<-y
		m<<-NULL	
	}
	get<- function() x
	set.matrix<-function(solve) m <<-solve
	get.matrix<-function() m
	list(set= set, get = get,
		set.matrix=set.matrix,
		get.matrix=get.matrix)
}

## Write a short comment describing this function
##Inverts matrix if hasn't prevously been inverted
## enter function as follows: cacheSolve(n)
## n same as above: n<-makeCacheMatrix(matrix(data, nrow=i, ncol=i))

cacheSolve <- function(x, ...) {
		m<<-x$get.matrix()
		if(!is.null(m))  {
				message("getting cached data")
				return(x$get.matrix())
		}else{
		data<-x$get()
		m<-solve(data, ...)
		m<-x$set.matrix(m)
		m}
}
