#Question 1
x1 <- c(0.0, 0.8, -0.8, -0.5, 0.0)
y1 <- c(1.0, -0.5, -0.5, 1.0, 1.0)
plot(x1, y1)
#C

#Question 2

x2 <- 1
y2 <- 1
plot(x2, y2, pch=6)
#6

#Question 3
f <- function (x) 
{
  x^4 - 2*x^2 - 4
}
h <- function(x)
{
  sinh(x) - 5*sin(x)
}

x31 <- seq(-5, 10, by=0.01)
y31 <- f(x31)

plot(x31, y31, "l") 

lines(x31, h(x31), lty=2, col=3)


#maybe 3

#Question 4
x41 <- 0
y41 <- 0

a41 <- 1.15
b41 <- 0.45

for (n41 in 1:1000)
{
  plot(x41, y41)
  
  x41[n41 + 1] = y41[n41] + 1 -  a41 * (x41[n41])^2
  
  y41[n41 + 1] = b41 * x41[n41]
}

#probably C

x42 <- 0
y42 <- 0

a42 <- 1.05
b42 <- 0.5

for (n42 in 1:1000)
{
  plot(x42, y42)
  
  x42[n42 + 1] = y42[n42] + 1 -  a42 * (x42[n42])^2
  
  y42[n42 + 1] = b42 * x42[n42]
}
#probably B

x43 <- 0
y43<- 0

a43 <- 1.4
b43 <- 0.3

for (n43 in 1:1000)
{
  plot(x43, y43)
  
  x43[n43 + 1] = y43[n43] + 1 -  a43 * (x43[n43])^2
  
  y43[n43 + 1] = b43 * x43[n43]
}
#probably A

x44 <- 0
y44 <- 0

a44 <- 1.2
b44 <- 0.2

for (n44 in 1:1000)
{
  plot(x44, y44)
  
  x44[n44 + 1] = y44[n44] + 1 -  a44 * (x44[n44])^2
  
  y44[n44 + 1] = b44 * x44[n44]
}
#Defiently D
