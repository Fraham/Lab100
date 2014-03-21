#Question 1

A <- matrix( c(1,-3,2,-5,1,2,2,3,-4), ncol=3, nrow=3, byrow=FALSE )
B <- matrix( c(10,6,8,16,8,12,17,9,14), ncol=3, nrow=3, byrow=FALSE )
C <- matrix( c(1,-4,5,2,-3,-6), ncol=3, nrow=2, byrow=FALSE )
D <- matrix( c(8,7,8,14,1,-4), ncol=2, nrow=3, byrow=FALSE )
E <- matrix( c(2,2,2,2), ncol=2, nrow=2, byrow=FALSE )

F <- C %*% A %*% t(B) %*% D + E %*% C %*% D

F

#C

#Question 2

e <- c(2, -1.5, 5.5, 0.5, 2.5)
L <- matrix( c(1,2,1,2,0,1,-1,3,-1,1,1,1,0,1,-1,1,1,-1,1,-1,1,-1,2,1,1),5)
L

solve(L, e)

#x1 = 0.5, x2 = 1, x3 = -0.5, x4 = 0, x5 = 1

#Question 3

nilpotent <- function(A) 
{
  dm <- dim(A)[1]
  if (abs(det(A)) > 1e-8)
  {
    return("Matrix is not nilpotent")
  }
  if (max(abs(A))< 1e-8)
  { 
    return(1)
  }
  
  An <- A
  
  for (n in 2:dm) 
  {
    An <- An%*%A
    if (max(abs(An))< 1e-8) return(n)
  }
  
  return("Matrix is not nilpotent")
}

V <-matrix(c(-4,10,7,-2,-3,-1,0,0,1,0,1,-1,-6,14,7,-4,-5,1,-4,10,6,-4,-2,0,-2,4,2,-2,0,0,0,2,1,-2,-1,1), 6)
V
W <-matrix(c(4,2,4,0,-2,6,2,6,-2,2,-6,-2,-4,0,4,6,4,8,0,-2,4,2,4,0,-2), 5)
W
X <-matrix(c(-1/8,-9/8,-3/4,1/8,5/4,1/4,1/2,-1/4,-5/8,3/8,1/4,5/8,11/8,11/8,5/4,-3/8), 4)
X
Y <-matrix(c(-2,-6,6,-2,-4,2,2,12,-12,4,10,-2,0,6,-7,1,5,-2,0,-2,2,0,-2,0,0,-4,5,-1,-3,2,2,2,-1,1,1,0), 6)
Y
Z <-matrix(c(0.3,-2.4,0.06,0.60,0.0625,-0.5,0.0125,0.125,-0.5,4,-0.1,-1,0.15,-1.2,0.03,0.3), 4)
Z

nilpotent(V)
nilpotent(W)
nilpotent(X)
nilpotent(Y)
nilpotent(Z)

#V-D, W-B, X-C, Y-E, Z-A

#Question 4

Q4 <- function(X, n)
{
  copy <- X
  
  if(n==0)
  {
    X <- matrix(c(1,0,0,0,1,0,0,0,1),3)
    return(X[3,2])
  }
  
  for(i in 1:(n-1))
  {
    X <- X %*% copy 
  }
  
  return(X[3,2])
}

W <- matrix(c(1,0,1, 1,1,-1,-1,1,0), 3)
W

Q4(W, 25)

#-2721

#Question 5

sum <- 0
n <-10

for(i in 0:n)
{
  j <- (1/factorial(i)) * Q4(W, i)
  sum <- sum + j
}

sum

#3.593


