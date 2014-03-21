#Question 1:
x <- c(0.0,  0.8, -0.8, -0.5, 0.0)
y <- c(1.0, -0.5, -0.5,  1.0, 1.0)
plot(x,y,type="l")
#This produces a trapzium

#Question 2:
points(x=rep(0.5,10),y=seq(0,1,length.out=10),pch=1:10)
#This adds points with each of the first 10 plotting symbols going up the screen
#We can observe that the 6th one is a down pointing triangle
#Hence pch=6

#Question 3:
x <- seq(-5,10,by=0.01)
plot(x, x^4 - 2*x^2 - 4,type="l")
lines(x, sinh(x) - 5*sin(x),col=2)
#This reveals a plot that clearly shows one intersection near x=9.5
#However, it is ambiguous as to how many more intersections there are between -5 and 5.

#We can zoom in by using xlim and ylim with appropriate values
plot(x, x^4 - 2*x^2 - 4,type="l",xlim=c(-5,5),ylim=c(-50,100))
lines(x, sinh(x) - 5*sin(x),col=2)
#This reveals two further roots at x~ -1.9 and x~ 1.8
#Hence there are 3 roots.

#Question 4:
#We can find the sequence of x and y using for loops
#For the first set of values:
a <- 1.15
b <- 0.45

N<-1000
x <- y <- 0
for (i in 2:N) {
x[i] <- y[i-1] + 1 - a*x[i-1]^2
y[i] <- b*x[i-1]
}

#To find which set of parameters matching with which plot we produce
plot(x,y,pch=3)

#Changing the values of a and b shows that
#(i) goes with C
#(ii) goes with B
#(iii) goes with A
#(iv) goes with D

