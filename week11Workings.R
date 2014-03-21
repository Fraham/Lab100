#Question 1

#E

#Question 2

f <- function(x,y)
{
  if (x <y) 
  {
    out <- y
  }
  else
  {
    out <- x
  }
  return(out)
}

f(2,3)

g <- function(x,y) return( x*(x >=y) + y*(x<y) )
x <- seq(0,10,by=0.1)
g(x,3)

#B

#Question 3

recursion <- function(A,B,u,v,N) 
{
  x <- c(u,v,rep( 1, N -2))
  count <- 0
  for( n in 3:N)
  {
    x[n] <- A*x[n-1] + B*x[n-2]
    if (abs(x[n]) < 0.5)
    {
      count <- count + 1
    }
  }
  return(count)
}

recursion(1.5, -1, 1, 0.5, 100)

#30

#Question 4

recursion <- function(A,B,u,v,N) 
{
  x <- c(u,v,rep( 1, N -2))
  count <- 0
  for( n in 3:N)
  {
    x[n] <- A*x[n-1] + B*x[n-2]
  }
  return(x)
}

recursion(1.5, -1, 1, 0.5, 100)

#C

#Question 5

recursion <- function(A,u,v,N) 
{
  x <- c(u,v,rep( 1, N -2))
  count <- 0
  for( n in 3:N)
  {
    x[n] <- A*x[n-1] - A*x[n-2] - A
    if (abs(x[n]) < 0.5)
    {
      count <- count + 1
    }
  }
  return(count)
}

for (n in 1:50)
{
  count <- recursion(n/50, 1, 0.5, 100)
  
  if (count == 5)
  {
    answer <- n
  }
}

answer

#41

