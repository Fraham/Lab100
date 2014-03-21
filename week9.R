#Question 1:
x <- sqrt(pi)
for (n in 1:7) {
  x <- (n - 0.5)*x
}
x
#1871.254

#Question 2:
x <- 0
maxn <- 0
for (n in 1:100) {
 if (x >= 4) {
    xnew <- x - n
 }else{
    xnew <- x + 1
 }
 x <- xnew
 if (x==4) maxn <- n
}
maxn
#94

#Note we can also do this question
#by storing the sequence x as a vector
#But there is a problem because
#we cannot assign the 0th element of a
#vector in R

x <- rep(0,101)
maxn <- 0
for (n in 1:100) {
 if (x[n] >= 4) {
    x[n+1] <- x[n] - n
 }else{
    x[n+1] <- x[n] + 1
 }
 if (x[n+1]==4) maxn <- n
}
maxn

#The stored vector x then has nth element representing x_{n-1} in the sequence


#Question 3:
#a = no. of 2p
#b = no. of 5p
#c = no. of 10p
#d = no. of 20p
#e = no. of 50p
count <-0
for (a in 0:15) {
  for (b in 0:5) {
    for (c in 0:7) {
      for (d in 0:5) {
        for (e in 0:2) {
          value <- 2*a + 5*b + 10*c + 20*d + 50*e #Value of the combination
          if (value==100) count <- count+1 #Add one to the counter if value is exactly 100
        }
      }
    }
  }
}
count
#72

#Question 4 and 5:

#We firstly need to find f'(x)
#Via differentiation:
#f'(x) = 4*x^3 - 8*x

x <- -4
it <- 0
converge <- FALSE
while(!converge) {
  it <- it + 1  
  xnew <- x - (x^4 - 4*x^2 - 36/7)/(4*x^3 - 8*x)
  diff <- abs(xnew - x)
  converge <- (diff < 1e-5)
  x <- xnew
}
x
#-2.241365
it
#7

#Hence the answer to Q4 is -2.24 
#and the answer to Q5 is 7














