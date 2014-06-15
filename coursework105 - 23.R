#Question 11

density <- 
density <- function(x)
{
  return ((1/sqrt(18*pi))*exp(-((x-4)^2/18)))
}

numbers <- -2:10

plot(density(x = -2:10, type="l"))
plot(dnorm(x = -2:10, 4, 3), type="l")
plot(pnorm(-2:10, 4, 3), type="l", col="blue")

density(c(2,4,6))

