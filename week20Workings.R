dbinom( x=0, size=3, prob=0.5) + dbinom( x=1, size=3, prob=0.5)
sum( dbinom( x=0:1, size=3, prob=0.5) )

set.seed(103)
sum(sample(0:1,20,replace=TRUE,prob=c(0.3,0.7)))
set.seed(103)
rbinom(1,20,0.7)

sum(dpois(0:5,4)*dbinom(5:0,6,0.3))
#------------------------------------------------------------------

#Question 1

set.seed(123)
PoissonPMF <- rpois( n=100, lambda=0.5)
sum(PoissonPMF)

#E

#------------------------------------------------------------------

#Question 2

pbinom( q=10, size=15, prob=0.4) - pbinom( q=3, size=15, prob=0.4)

#0.9001504

#------------------------------------------------------------------

#Question 3

c <- c(0)

for (i in 0:8)
{
  for(j in 0:8)
  {
    if (i * j == 8)
    {
      c <- c(c, dpois(i,3) * dbinom(j,10,0.2))
    }
  }
}

sum(c)

#0.0726632

#------------------------------------------------------------------

#Question 4

d <- c(0)

for (i in 0:19)
{
  for(j in 0:19)
  {
    if (i + j == 2 || i + j == 3 || i + j == 5 || i + j == 7 || i + j == 11 || i + j == 13 || i + j == 17 || i + j == 19)
    {
      d <- c(d, dbinom(i,20,0.4) * dbinom(j,20,0.7))
    }
  }
}

sum(d)

#0.1153217

#------------------------------------------------------------------

#Question 5

x <- 4.67

ppois( q=4, lambda=x)

#4.67
