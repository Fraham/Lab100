#Week 18

#Quiz 1:

set.seed(565)
rolls <-sample(1:6,200,replace=TRUE,prob=rep(1/6,6))
sum(rolls==5)
#35

#Quiz 2
#The sample space needs to be 1,2,..,49
#The size needs to be 6
#We sample without replacement i.e. replace=FALSE
#The probability set is (1/49,...,1/49)

#Hence the answer is (C)

#Quiz 3
#We can use a while loop
m <- 0
p_m <- 1
while (p_m > 0.05) {
  m<- m +1
  p_m <- (6*5*4*3 + 6*5*4^2*m)/((m+6)*(m+5)*(m+4)*(m+3))
}
m
#16

#Quiz 4

#We can set up a matrix
expec <- matrix(0,100,50)
for (N in 1:100) {
  for (n in 1:50){
    expec[N,n] <- 1e6/choose(N,n)
  }
}
min(abs(expec - 0.5))
#Thus the smallest deviation is 0.006120203
#To establish which N,n combination this refers to
#we can use apply:
which(apply(abs(expec - 0.5),1,min)==min(abs(expec-0.5)))
#N = 85
which(apply(abs(expec - 0.5),2,min)==min(abs(expec-0.5)))
#n = 4

#Note that the answer obtained depends on the scope of N and n considered
#If we only considered N up to 50 then we get a best answer of (30,7)

#For large enough N we can find an exact answer for instance by matching
#a single number from 2000000 numbers.
