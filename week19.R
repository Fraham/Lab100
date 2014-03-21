#Week 19 Answers

#Q1. 
#The integral of sin(x) from 0 to pi/2 is 1. This therefore means only (D) & (E) are possible correct answers
#Note that sin(x) takes a maximum value of 1 at sin(pi/2) therefore (D) is the correct answer

#Q2
SampleSpace <- 1:6
ProbSet <- rep( 1/6, times=6 )
Rolls <- sample( SampleSpace, 2, replace=TRUE, ProbSet )
SampleSize <- 100000
Trials <- rep( 0, SampleSize )
for( i in 1:SampleSize ){
  Rolls <- sample( SampleSpace, size=2, replace=TRUE, ProbSet)
  Trials[i] <- sum( Rolls )
}
var(Trials)
#I get, 5.829 - but the result will be random with the accuracy dependent on SampleSize
#The true answer is 5.83 (B)

#Q3.

MC.integrate <- function(f,a,b,k,N) {
  simx <- runif(N,a,b)
  simy <- runif(N,0,k)
  p <- sum(f(simx) > simy)/N
  return(p * k * (b-a))
}

#To find k we need to differentiate
#the integrand
#and show it has a maximum at x=2/5
#hence k=(2/5)^2 * (3/5)^3

set.seed(134)
I <- MC.integrate(function(x) x^2*(1-x)^3,0,1,(2/5)^2 * (3/5)^3,N=10000)
I
#0.01676506
#Hence (C)
#NB: The exact answer is 0.0166667
#but this was not what the question was
#asking for.

#Q4.

Ns <- 10^(seq(2,6,by=0.05))
In<-0
for (i in 1:length(Ns)) {
  In[i] <- MC.integrate(function(x) (1-x)/(1+x),0,1,1,N=Ns[i])
}
#The true value of the integral can
#be found to be 2*log(2) -1
trueI <- 2*log(2) -1

plot(log(Ns),log(abs(In - trueI)))
#The plot should show points that have 
#a general decreasing trend with log(N)
#with gradient approximately -0.5
abline(a=-1.5, b=-0.5)

#hence the correct answer is (B)