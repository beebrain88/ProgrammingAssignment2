## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

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

.## Write a short comment describing this function

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


a<-makeCacheMatrix(matrix(c(1,2,12,13), nrow=2, ncol=2))
summary(a)
c<-matrix(c(1,2,12,13), nrow=2, ncol=2)
c
a$set.matrix(c)
cacheSolve(a)
a$get.matrix()