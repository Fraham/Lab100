#Week 20

#1.
set.seed(123)
y <- rpois(100,0.5)
sum(y)
#47

#2.
#Either:
p <- dbinom(4:10,15,0.4)
sum(p)
#0.90015
#Or:
pbinom(10,15,0.4) - pbinom(3,15,0.4)
#0.90015

#3.
#Z = 8 implies either
#(X,Y) = (1,8)
#(X,Y) = (2,4)
#(X,Y) = (4,2)
#(X,Y) = (8,1)
x <- c(1,2,4,8)
y <- c(8,4,2,1)
sum(dbinom(x,10,0.2)*dpois(y,3))
#0.07266


#4.
prob <- 0
for (k in c(2,3,5,7,11,13,17,19,23,29,31,37)) {
  for (x in 0:20) {
    prob <- prob + dbinom(x,20,0.4) * dbinom(k - x,19,0.7)
  }
}
#0.268627

#5. 
#We know that we can compute P(X < 5) = ppois(4,lambda)
#There are various ways of finding lambda
#One way is to compute ppois(4,lambda) for a fine grid of 
#values of lambda and take the value nearest 0.5
lambda <- seq(0,10,by=0.0001)
ps <- ppois(4,lambda)
lambda[which.min(abs(ps - 0.5))]
#4.6709
