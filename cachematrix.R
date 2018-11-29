## This piece of code created a special matrix and calculate its inverse.
## it catches the inverse value if its already calculated, if not, the 
## code will calulate it.

## makeCacheMatrix function creats a special matrix. each time it chaecks 
##if the matrix is changed or not. if yes, it replaced it with th enew one.
##the output of this function is a list containg different functions.

makeCacheMatrix<-function(x=matrix()){
    invrt <- NULL
    set<- function(y){
    x<<-y
    invrt<<-NULL

    }
    get<-function() x
    setInvrt <- function(invers) invrt <<- invers
    getInvrt <- function() invrt
    
    list(set=set, get=get, setInvrt=setInvrt, getInvrt=getInvrt)

}

##The following function calculate the inverse. if its already calculated, it 
## catches the value and return it.

catchSolve <- function(x,...){
           invrt <-x$getInvrt()
           if(!is.null(invrt)){
               message("Catching Data")
               return(invrt) 
            }
            data <- x$get()
            invrt <- solve(data)
            x$setInvrt(invrt)
            invrt  


}
