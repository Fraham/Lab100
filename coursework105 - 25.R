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

hist(weight, xlim = c(2, 16), breaks = 10, col="green")

prob <- weight / sum(weight)

x <- seq(2, 16, length = 384)

f <- dnorm(x, mean, sd)

h <- hist(weight, breaks = 10, plot=FALSE)
h$counts=h$counts/sum(h$counts)
plot(h)

lines(x, f, type = "l", col = "red", lwd = 2)
