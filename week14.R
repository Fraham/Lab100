#Week 14

#Quiz 1:

A <- matrix( c(1,-3,2,-5,1,2,2,3,-4), ncol=3, nrow=3, byrow=FALSE )
B <- matrix( c(10,6,8,16,8,12,17,9,14), ncol=3, nrow=3, byrow=FALSE )
C <- matrix( c(1,-4,5,2,-3,-6), ncol=3, nrow=2, byrow=FALSE )
D <- matrix( c(8,7,8,14,1,-4), ncol=2, nrow=3, byrow=FALSE )
E <- matrix( c(2,2,2,2), ncol=2, nrow=2, byrow=FALSE )

C%*%A%*%t(B)%*%D + E%*%C%*%D
#     [,1] [,2]
#[1,] 3525 2157
#[2,] 5456 3536

This corresponds to the matrix given in option (C)

#Quiz 2:
#The given system can be represented in matrix form by
#Wx = b

W <- rbind(c(1,1,1,1,1),c(2,-1,1,1,-1),c(1,3,0,-1,2),c(2,-1,1,1,1),c(0,1,-1,-1,1))
b <- c(2,-1.5,5.5,0.5,2.5)
solve(W,b)
#c(0.5, 1, -0.5, 0, 1)

#Quiz 3:
nilpotent <- function(A) {
dm <- dim(A)[1]
if (abs(det(A)) > 1e-8) return("Matrix is not nilpotent")
if (max(abs(A))< 1e-8) return(1)
An <- A
for (n in 2:dm) {
An <- An%*%A
if (max(abs(An))< 1e-8) return(n)
}
return("Matrix is not nilpotent")
}


V <- rbind(c(-4,0,-6,-4,-2,0), c(10,0,14,10,4,2),
c(7,1,7,6,2,1),c(-2,0,-4,-4,-2,-2),c(-3,1,-5,-2,0,-1),
c(-1,-1,1,0,0,1))

W <- rbind(c(4,6,-6,6,4),c(2,2,-2,4,2),c(4,6,-4,8,4),
c(0,-2,0,0,0),c(-2,2,4,-2,-2))

X <- rbind(c(-1/8,5/4,-5/8,11/8),c(-9/8,1/4,3/8,11/8),
c(-3/4,1/2,1/4,5/4),c(1/8,-1/4,5/8,-3/8))

Y <- rbind(c(-2,2,0,0,0,2),c(-6,12,6,-2,-4,2),
c(6,-12,-7,2,5,-1),c(-2,4,1,0,-1,1),c(-4,10,5,-2,-3,1),
c(2,-2,-2,0,2,0))

Z <- rbind(c(0.3,0.0625,-0.5,0.15),c(-2.4,-0.5,4,-1.2),
c(0.06,0.0125,-0.1,0.03),c(0.6,0.125,-1,0.3))

nilpotent(V)
#5
nilpotent(W)
#3
nilpotent(X)
#4
nilpotent(Y)
#"Matrix is not nilpotent"
nilpotent(Z)
#2

#Quiz 4

matpow <- function(X,n) {
if (n==1) {
return(X)
}else{
X0 <- X
for (i in 2:n) {
X0 <- X0%*%X
}
return(X0)
}
}
W <- rbind(c(1,1,-1),c(0,1,1),c(1,-1,0))

W25 <- matpow(W,25)
W25[3,2]
#-2721

#Quiz 5

eW <- diag(3)
for (n in 1:10) {
eW <- eW + matpow(W,n)/factorial(n)
}
eW[3,2]
#-0.407
