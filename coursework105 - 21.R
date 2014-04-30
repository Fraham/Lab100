#Question 1

c <- c(88,84,83,95,92,98,111)
c

mean(c)

c - mean(c)

(c - mean(c))^2

sum((c - mean(c))^2)

1/(length(c) - 1) * (sum((c - mean(c))^2))

(1/(length(c) - 1) * (sum((c - mean(c))^2)))^0.5

sd(c)

(abs(147 - mean(c)))/sd(c)

#Quetion 3


anorexic <- read.table(file("anorexics.dat"))

BPI <- anorexic[,1]
actualWidth <- anorexic[,2]
group <- anorexic[,3]

BPI
actualWidth
group

groupFac <- as.factor(group)

plot(actualWidth, BPI, pch=group)

aggregate(actualWidth~group, anorexic, mean)

#Quix question

a <- rep(0, times = 3)
b <- rep(1, times = 16)
c <- rep(2, times = 6)
d <- rep(6, times = 1)

e <- c(a,b,c,d)

e

mean(e)

sd(e)

var(e)
