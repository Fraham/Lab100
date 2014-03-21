set.seed(234)

SampleSpace <- c( "H", "T" )
ProbSet <- c( 0.5, 0.5 )

SampleSize <- 100
Trials <- rep( 0, SampleSize )
for( i in 1:SampleSize )
{
  CoinTosses <- sample( SampleSpace, size=10, replace=TRUE, ProbSet)
  Trials[i] <- sum( CoinTosses == "T" )
}

mean( Trials )
var( Trials )
barplot( table(Trials), main="Number of Tails with Ten Fair Coins")

#------------------------------------------------------------------

SampleSpace <- 1:6
ProbSet <- rep( 1/6, times=6 )

SampleSize <- 1000
Trials <- rep( 0, SampleSize )
for( i in 1:SampleSize )
{
  Rolls <- sample( SampleSpace, size=2, replace=TRUE, ProbSet)
  Trials[i] <- sum( Rolls )
}
barplot( table( Trials ), main="Total Number on Two Dice")

#------------------------------------------------------------------

data <- runif( 100 )
hist( data, col=5 )
mean( data )

#------------------------------------------------------------------

runif( 1, min=-2, max=2 )
data <- runif( 100, min=-2, max=2 )
hist( data, col=5 )
mean( data )

#------------------------------------------------------------------

MC.integrate <- function(f,a,b,k,N) 
{
  simx <- runif(N,a,b)
  simy <- runif(N,0,k)
  p <- sum(f(simx) > simy)/N
  return(p * k * (b-a))
}

f <- function(x) x^5*exp(-x)
set.seed(103)
I <- MC.integrate(f,a=0,b=1,k=exp(-1),N=100)
set.seed(103)
I <- MC.integrate(f,a=0,b=1,k=exp(-1),N=10000)

#------------------------------------------------------------------

#Question 1

N <- 100000

MC.integrate(sin,a=0,b=1,k=1,N=N)
MC.integrate(sin,a=0,b=pi,k=1,N=N)
MC.integrate(sin,a=0,b=1,k=pi,N=N)
MC.integrate(sin,a=0,b=pi/2,k=1,N=N)
MC.integrate(sin,a=0,b=pi/2,k=1/2,N=N)

#D

#------------------------------------------------------------------
#Question 2

SampleSpace <- 1:6
ProbSet <- rep( 1/6, times=6 )

SampleSize <- 100000
Trials <- rep( 0, SampleSize )
for( i in 1:SampleSize )
{
  Rolls <- sample( SampleSpace, size=2, replace=TRUE, ProbSet)
  Trials[i] <- sum( Rolls )
}
barplot( table( Trials ), main="Total Number on Two Dice")

var( Trials )

#Maybe B

#------------------------------------------------------------------
#Question 3

f <- function(x) x^2 * (1 - x)^3
set.seed(134)
I <- MC.integrate(f,a=0,b=1,k=exp(-1),N=10000)
#need to change the value for k
I



#B

#------------------------------------------------------------------
#Question 4

f <- function(x) (1-x)/(1+x)
set.seed(134)
N <- 10000000
IN <- MC.integrate(f,a=0,b=1,k=1,N)

I <- 0.3862943611199

IN

log10(abs(IN - I))

-2*log(N)
-0.5*log(N)
log(N)
-log(N)

(log10(abs(IN - I))) - (-2*log(N))
(log10(abs(IN - I))) - (-0.5*log(N))
(log10(abs(IN - I))) - (log(N))
(log10(abs(IN - I))) - (-1*log(N))

#B