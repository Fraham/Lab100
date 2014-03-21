#Question 1

matrix(seq(2,74,by=3),5,5,byrow=FALSE)
#E

#Question 2

A <- matrix(c(1,0,1,0,-1,-1,-1,1,2,0,0,0,0,1,0,3,1,1,1,0,1,2,-1,1,2),5,5,byrow=FALSE)
solve(A)

#D

#Question 3

M <- matrix(0,10,10)

for (i in 1:10) 
{
  M[i,i] <- 1
  
  if (i > 1)
  {
    M[i,i-1] <- -1
  }
  if (i > 2)
  {
    M[i,i-2] <- -2
  }
  if (i < 10)
  {
    M[i,i+1] <- -1
  }
  if (i < 9)
  {
    M[i,i+2] <- -2
  }
}

det(M)

#775

#Question 4

K <- solve(M)

K[7,8]

#0.1935484   change to 3 dp

#Question 5

anws <- 0

for(n in 1:21)
{
  N <- matrix(0,n,n)
  
  for (i in 1:n) 
  {
    N[i,i] <- 1
    
    if (i > 1)
    {
      N[i,i-1] <- -1
    }
    if (i > 2)
    {
      N[i,i-2] <- -2
    }
    if (i < n)
    {
      N[i,i+1] <- -1
    }
    if (i < n-1)
    {
      N[i,i+2] <- -2
    }
  }
  
  if (det(N) == 190231)
  {
    anws <- n
  }
}

#21

#Question 6

function H <- ()
{
  
}

n <- 6
max <- 0

for(i1 in 1:n)
{
  for(i2 in 1:n)
  {
    for(i3 in 1:n)
    {
      for(i4 in 1:n)
      {
        for(i5 in 1:n)
        {
          for(i6 in 1:n)
          {
            M <- matrix(c(i1,i2,i3,i2,i4,i5,i3,i5,i6), 3)
            y <- det(M)
            
            if (y > max)
            {
              max <- y
            }
          }
        }
      }
    }
  }
}

M
max

#325