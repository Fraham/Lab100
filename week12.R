#Week 12

#Quiz 1.

#if (x < 0) stop("x must be non-negative")
#if (length(x)>1) stop("x must be a scalar")
#if (!is.numeric(x) | !is.numeric(y)) stop("All inputs must be numerical")
#if (any(is.na(y))) stop("y must not contain missing values")

#Quiz 2.

CF <- function(a) {
 n <- length(a)
 if (n == 1) {
  out <- a[1]
 }else {
  out <- a[1] + 1/CF(a[2:n])
 }
 return(out)
}

pi^(1/3)
#1.464592
cf1 <- CF(c(1,2,6,1,4))
#1.465753
cf2 <- CF(c(1,2,6,1,1,3,1))
#1.464567
cf3 <- CF(c(1,2,7,1,2,12))
#1.469421
cf4 <- CF(c(1,2,7,2,1,1,1))
#1.468254
cf5 <- CF(c(1,2,6,1,1,1,4))
#1.465

#Hence (B): a=(1,2,6,1,1,3,1), is the best approximation


#Quiz 3.

k<-1:10
a <- (k>1)*(2*k - 3)
err <- 0
for (i in k) {
err[i] <- abs(tanh(1) - CF(a[1:i]))
}
min(which(err < 1e-7))
#6

#Quiz 4.
numerical_derivative <- function(f, x, ep = 1e-5) {
 g <- (f(x + ep) - f(x))/ep
 return(g)
}

x <- seq(0,1,by=0.01)

#We can write a function that calls the numerical derivative function directly...
#Either:
second_derivative <- function(f, x, ep = 1e-4) {
 g <- (numerical_derivative(f,x + ep,ep=ep) - numerical_derivative(f,x,ep=ep))/ep
 return(g)
}

#or just:
second_derivative <- function(f, x, ep = 1e-4) {
 g <- numerical_derivative(function(x) numerical_derivative(f,x,ep=1e-4),x,ep=1e-4)
 return(g)
}

f <- function(x) sin(exp(x) + sqrt(1 + x^2))
second_derivative(f,x)
#Root occurs between 79th and 80th entry ie.
#between 0.78 and 0.79
x <- seq(0.78,0.79,by=0.001)
second_derivative(f,x)
#Root occurs between 0.787 and 0.788
#Hence to 2dp: x = 0.79.

#Quiz 5:

R <- function(m,n) {
  if (m==0) {
    return(n+1)
  }
  if (m>0 & n==0) {
    return(R(m-1,1))
  }
  if (m>0 & n>0) {
    return(R(m-1,R(m,n-1)))
  }
}

R(3,5)
#253

#Note this is the Ackermann function
