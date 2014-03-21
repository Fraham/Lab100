#Question 1
Max1 <- 10

x1 <- rep((pi)^0.5, Max1)

for(n1 in 1:Max1)
{
  x1[n1 + 1] <- (n1 - 0.5) * x1[n1]
}

x1[8]
#might be 1871.254

#Question 2

n2 <- 2
Max2 <- 100

x2 <- rep(0, 100)

x2[1] <- 0 + 1

for(n2 in 2:Max2)
{
  if(x2[n2-1] >= 4)
  {
    x2[n2] <- x2[n2-1] - n2
  }
  else
  {
    x2[n2] <- x2[n2-1] + 1
  }
  if (x2[n2] == 4)
  {
    break
  }
}

n2
#maybe 4


#Question 3

n2p <- 0
x2p <- 15

n5p <- 0
x5p <- 5

n10p <- 0
x10p <- 7

n20p <- 0
x20p <- 5

n50p <- 0
x50p <- 15

count <- 0

for(n2p in 0:x2p)
{
  for(n5p in 0:x5p)
  {
    for(n10p in 0:x10p)
    {
      for(n20p in 0:x20p)
      {
        for(n50p in 0:x50p)
        {
          if ((n2p*2) + (n5p*5) + (n10p*10) + (n20p*20) + (n50p*50) == 100)
          {
            count <- count + 1
          }
        }
      }
    }
  }
}

count

#72

#Question 4

top <- function (x) 
{
  x^4 - 4*x^2 - (36/7)
}

bot <- function (x)
{
  4*(x^3) - 8*x
}

n4 <- 2

x4 <- rep(-4, 2)

k <- top(x4[n4-1])
m <- bot(x4[n4-1])
x4[n4] <- x4[n4-1] - (k/m)



while(TRUE)
{
  n4 <- n4 + 1
  k <- top(x4[n4-1])
  m <- bot(x4[n4-1])
  
  x4[n4] <- x4[n4-1] - (k/m)
  
  
  g <- abs(x4[n4] - x4[n4-1]) <= 1e-5
  
  if (g == TRUE)
  {
    break;
  }
}

x4[n4]
#-2.241365

#Question 5

n4-1 
#7


