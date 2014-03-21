#Week 17

#Quiz 1

airquality <- read.table("airquality.txt",header=TRUE)
attach(airquality)
histogram(Temp)
histogram(Month)
histogram(Wind)
histogram(Solar.R)
histogram(Ozone)
#We see that Ozone matches the displayed plot.

#Quiz 2
rainfall <- read.table("durham.txt",header=TRUE)

#In this format we can use 
yearval <- apply(rainfall,2,sum)
which(yearval == max(yearval))
#This gives 20
#The 20th element refers to 1930.

#Alternatively if we have turned the data into long format 
#rainfall.long as defined in the Workshop
#We can use
yearval2 <- tapply(rainfall.long$rain,rainfall.long$year,sum)
names(yearval2)[which(yearval2 == max(yearval2))]
#Which returns "1930"

#Quiz 3
#If we use the data in the original form we can use
median(apply(rainfall,2,sum))
#659.85
#In the long format we use 
median(tapply(rainfall.long$rain,rainfall.long$year,sum))
#659.85

#Quiz 4
#We can use the same vector found in the previous two questions
cor(yearval, 1911:1990)
#-0.0671

#Quiz 5
#We make a new variable season
season <- rep(c(1,1,2,2,2,3,3,3,4,4,4,1),80)
tapply(rainfall.long$rain,season,mean)
#1        2        3        4 
#53.46667 46.10167 59.67958 58.62125 
#Hence Summer has the highest rainfall per month
#with 59.68 mm

#Quiz 6
#There are various way we could calculate this
#One way is to create a new function.

f <- function(x) {
  which(x == max(x))
}

#We can then use apply
maxm <- apply(rainfall,2,f)
#This gives a vector corresponding to the index of the month the max occurred.
table(maxm)
#1  2  3  4  5  6  7  8  9 10 11 12 
#6  3  4  3  1  6  9 12  8  6 12 10 
#This shows there were 6+9+12 = 27 summer wettest months.

#Alternatively we could can use a method with tapply
#First find the value of the wettest month in each year
yearmax <- tapply(rainfall.long$rain,rainfall.long$year,max)
#Then subscript and find the wettest month in each summer
rainfall.summer <- rainfall.long[season==3,]
summermax <- tapply(rainfall.summer$rain,rainfall.summer$year,max)
#And then count how many yearmax equal summermax
sum(yearmax==summermax)
#27
