#Question 1:
#The expression has value 4.5 and is correctly expressed by

6 * (5 + 1)/((4 - 2)^3)
#4.5

#which is option [B]

#Question 2:
#We need to create a vector representing 1^2, 2^2, ... 50^2

N <- 1:50
N2 <- N^2
sum(N2)

#42925
#which is option [B]

#Question 3:
#We need to create a vector representing -(1)^2, 2^2, -(3)^2,..,50^2

P <- (-1)^N
N3 <- N2*P
sum(N3)
#1275
#which is option [E]

#Question 4:
W <- 1/log(1 + exp(0.5*N))
sum(W)
#7.65555
#Which is option [E]

#Question 5:
#We can use trial and error to find the right value of N
N <- 6
U <- 0:N
V <- 2^(U+1)*(factorial(U))^2/(factorial(2*U + 1))
sum(V)
#3.132157
N <- 9
U <- 0:N
V <- 2^(U+1)*(factorial(U))^2/(factorial(2*U + 1))
sum(V)
#3.140578
#...
N <- 16
U <- 0:N
V <- 2^(U+1)*(factorial(U))^2/(factorial(2*U + 1))
sum(V)
#3.141586
#Which is rounded to the first 5dp is 3.14159.

#Hence the correct answer is N=16, option [D]
#We can double check this by trying N=15:
N <- 15
U <- 0:N
V <- 2^(U+1)*(factorial(U))^2/(factorial(2*U + 1))
sum(V)
#3.14158
#Which is only correct to 4dp.













