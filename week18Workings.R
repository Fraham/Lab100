SampleSpace <- c("H", "T")
ProbSet <- c(0.5, 0.5)

is.ProbSet <- function( space, probs )
{
  SizeCond <- length( space ) == length( probs )
  Positve <- all( probs >= 0 )
  Finite <- sum( probs ) == 1
  Valid <- SizeCond && Positve && Finite
  return( Valid )
}

is.ProbSet( SampleSpace, ProbSet)

SampleSpace <- c( "H", "T" )
ProbSet <- c( 2/3, 1/3 )
is.ProbSet( SampleSpace, ProbSet)

SampleSpace <- c( 1, 2, 3, 4, 5, 6 )
ProbSet <- c( 1/6, 1/6, 1/6, 1/6, 1/6, 1/6 )
is.ProbSet( SampleSpace, ProbSet)


SampleSpace <- 1:50
ProbSet <- rep( 1/50, times=50 )
is.ProbSet( SampleSpace, ProbSet)


SampleSpace <- c( "H", "T" )
ProbSet <- c( 0.5, 0.5 )
sample( SampleSpace, size=1, replace=TRUE, prob=ProbSet)

sample( SampleSpace, size=10, replace=TRUE, prob=ProbSet)
sample( SampleSpace, size=100, replace=TRUE, prob=ProbSet)
sample( SampleSpace, size=1000, replace=TRUE, prob=ProbSet)

CoinToss <- sample( SampleSpace, size=1000, replace=TRUE, prob=ProbSet )
TAB <- table( CoinToss )
TAB
hist( TAB, main="Simulation of 1000 Coin Tosses" )


SampleSpace <- 1:6
ProbSet <- rep( 1/6, times=6 )
set.seed( 30 )
sample( SampleSpace, size=5, replace=TRUE, prob=ProbSet )
set.seed( 75 )
sample( SampleSpace, size=5, replace=TRUE, prob=ProbSet )
set.seed( 30 )
sample( SampleSpace, size=5, replace=TRUE, prob=ProbSet )
sample( SampleSpace, size=5, replace=TRUE, prob=ProbSet )

SampleSpace <- rep(c("R","B"),c(6,4))
ProbSet <- rep(1/10, 10)
sample(SampleSpace, size=4, replace=FALSE, prob=ProbSet)

set.seed(245)
allred <- 0
threered <- 0
N <- 1000
for (i in 1:N) 
{
  balls <- sample(SampleSpace, size=4, replace=FALSE, prob=ProbSet)
  if(sum(balls=="R")==4) allred <- allred + 1
  if(sum(balls=="R")==3) threered <- threered + 1
}
p4 <- allred/N
p3 <- threered/N

#Question 1

set.seed(565)

SampleSpace <- 1:6
ProbSet <- rep( 1/6, times=6 )

outcome <- sample(SampleSpace, size = 200, replace=TRUE, prob=ProbSet)
sum(outcome == 5)

#35 - E

#Question 2

sample(1:49, 6, replace=FALSE, prob=rep(1/49,49))

#C

#Question 3

m <- 16

((6*5*4*3) + (6*5*4*4*m))/((m+6)*(m+5)*(m+4)*(m+3))

#16

#Question 4

c <- 0

m <- array(0, dim=c(99,99))

for(N in 1:99)
{
  for(n in 1:99)
  {
    #c <- c(c, 1000000/choose(N,n))
    m[N,n] <- 1000000/choose(N,n)
  }
}

which.min(abs(m - 0.5))
which(abs(m-0.5)==min(m-0.5))

382/99


8321/99

84*99

8321-8316

1000000/choose(85,4)

abs(0.5 - 0.4938796)
abs(0.5 - 0.5182687)

#85 - 0.4938796
#84 - 0.5182687
#83 - 0.5441821

#84,4
#N - 85, n-4

sapply(m,function(x)which.min(abs(x - 0.5)))

c
