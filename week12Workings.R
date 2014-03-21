#Question 1

#A-ii
#B-i
#C-iv
#D-iii

#Question 2

CF <- function(a) 
{
  n <- length(a)
  if (n == 1) 
  {
    out <- a[1]
  }
  else 
  {
    out <- a[1] + 1/CF(a[2:n])
  }
  return(out)
}

a2 <- CF(c(1, 2, 6, 1, 4))
b2 <- CF(c(1, 2, 6, 1, 1, 3, 1))
c2 <- CF(c(1, 2, 7, 1, 2, 12))
d2 <- CF(c(1, 2, 7, 2, 1, 1, 1))
e2 <- CF(c(1, 2, 6, 1, 1, 1, 4))
#B

#Question 3

CF2 <- function(a) 
{
  n <- length(a)
  if (n == 1) 
  {
    out <- a[1]
  }
  else 
  {
    out <- a[1] + 1/CF(a[2:n])
  }
  return(out)
}

number <- function(k)
{
  if(k == 1)
  {
    ans <- 0
    return(ans)
  }
  else# if (K > 1)
  {
    ans <- 2*k - 3
    return(ans)
  }
}

c <- NULL

calc <- function()
{
  for (n in 1:100)
  {
    c <- c(c, number(n))
  
    j <- CF2(c)
  
    if(abs(tanh(1) - j) < 1e-7)
    {
      return(n)
    }
  }
}

calc()

#6

#Question 4

derivative <- function(f, x, ep = 1e-4)
{
  g <- (f(x + ep) - f(x))/ep
  return(g)
}

doubleDerivative <- function(f, x, ep = 1e-4)
{
  j <- (derivative(f, x + ep) - derivative(f, x))/ep
  
  return(j)
}

f <- function(x) sin(exp(x) + (1 + x^2)^0.5)

g <- doubleDerivative(f, x <- seq(0,1,by=0.01), ep = 1e-4)

plot(seq(0,1,by=0.01),g,type='l')

#0.79 or 0.78

#Question 5

R <- function(m, n)
{
  if (m ==0)
  {
    ans <- n +1
  }
  else if(m > 0 & n == 0)
  {
    ans <- R(m-1, 1)
  }
  else if(m > 0 & n > 0)
  {
    ans <- R(m-1, R(m, n-1))
  }
  
  return(ans)
}

R(3,5)

#253