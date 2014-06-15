#Question 3

c <- (0:7)
d <- c(7,17,13,14,7,5,0,1)

sum(c*d)
sum(d)

mean <- sum(c * d) / sum(d)

mean

sum((c - mean)**2 * d)
(sum(d)-1)

var <- sum((c - mean)**2 * d) / (sum(d)-1)
var

barplot(d)

model <- dpois(0:7, mean)
barplot(model)

model * sum(d)

sqrt(var)
