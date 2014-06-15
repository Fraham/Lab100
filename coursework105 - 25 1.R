#Question 11

birthData <- read.table(file("birthdata.dat"))

length <- birthData[,1]
weight <- birthData[,2]


mean <- mean(weight)
var <- var(weight)
sd <- sqrt(var(weight))

mean
var
sd

hist(weight)

hist(weight, xlim = c(2, 16), breaks = 10, col="green")

x <- seq(0.001, 0.005, length = 384)

f <- dnorm(x, mean, sd)

prob <- weight / sum(weight)

hist(prob, xlim = c(0.001, 16), col="green")
hist(prob, xlim = c(0.001, 0.005), col="purple", breaks = 10)

lines(x,f,col="red", lwd = 2, type="l")


x <- seq(60, 78, length = 361)
f <- dnorm(x, 67.8, 3.7)
plot(x, f, type = "l", col = "red", lwd = 2)
