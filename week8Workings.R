#Question 2
a <- 1:100

c <- sin((3*a*pi)/44)

condition <- c>0

p <- c[condition]

sum <- length(p)

sum

#Question 3

condition3 <- (c > -0.5) & (c<= -0.25)

p3 <- c[condition3]

sum3 <- length(p3)

sum3

#question 4

b <- 1:100

d <- cos((5*b*pi)/13)

condition41 <- (abs(c) > 0.25) | (c > d)

p41 <- c[condition41]

sum4 <- length(p41)

sum4

#Question 5






#E, 56, 8, 92