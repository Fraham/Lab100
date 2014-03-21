#Week 11

#Quiz 1.
#The answer is E.
#We could rewrite this function in one line as
#f <- function(x) (x+4)^2 - 32


#Quiz 2.
#The function takes the maximum of x and y
#Note that if x and y are vectors, max(x,y) gives the maximum element across all elements of 
#each vector.
#The correct answer is therefore B.

#Example:

x <- c(1,2,3,4,5)
y <- c(2,3,2,3,2)

max(x,y)
#5
g <- function(x,y) return( x*(x >=y) + y*(x<y) )
g(x,y)
#2 3 3 4 5

#We could also use
#g <- function(x,y) return(pmax(x,y))

#Quiz 3.
recursion <- function(A,B,u,v,N) {
x <- c(u,v,rep( 1, N -2))
for( n in 3:N){
x[n] <- A*x[n-1] + B*x[n-2]
}
return(x)
}

a <- recursion(1.5,-1,1,1/2,100)
sum(abs(a) < 0.5)
#30.

#Quiz 4.
inhom_recursion <- function(A,B,k,u,v,N) {
x <- c(u,v,rep( 1, N -2))
for( n in 3:N){
x[n] <- A*x[n-1] + B*x[n-2] + k
}
return(x)
}
inhom_recursion(1.5,-1,0.3319,1,1/2,100)[100]
#-1.984991e-05
inhom_recursion(1.5,-1,-0.1323,1,1/2,100)[100]
#-1.407286
inhom_recursion(1.5,-1,1.006,1,1/2,100)[100]
#2.043578
inhom_recursion(1.5,-1,-1.006,1,1/2,100)[100]
#-4.05599
inhom_recursion(1.5,-1,0.4561,1,1/2,100)[100]
#0.3765042

#Hence the answer is A

#Quiz 5
nunder <- rep(0,50)
beta <- 1:50/50
for (m in 1:50) {
d <- inhom_recursion(beta[m],-beta[m],-beta[m],1,1/2,100)
nunder[m] <- sum(d < -0.5)
}
which(nunder==5)
#24

