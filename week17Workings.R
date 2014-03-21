airquality <- read.table("airquality.txt", header=TRUE)
dim(airquality)

rainfall <- read.table("durham.txt",header=TRUE)
dim(rainfall)

attach(airquality)
table(Temp,Month)

mean(Temp[Month==5])

tapply(Temp,Month,mean)

tapply(Temp,Month,sd)

tapply(Solar.R,Month,mean,na.rm=TRUE)

mean(rainfall[5,])

monthmean <- apply(rainfall, 1, mean)

yearmean <- apply(rainfall, 2, mean)

weighted.yearmean <- apply(rainfall, 2, weighted.mean, w=c(31,28,31,30,31,30,31,31,30,31,30,31))

rain <- c(rainfall)

rainvec <- unlist(rain)

monthvec <- rep(1:12,80)
yearvec <- rep(1911:1990,each=12)

rainfall.long <- data.frame(month = monthvec, year = yearvec, rain = rainvec)

row.names(rainfall.long) <- NULL

tapply(rainfall.long$rain, rainfall.long$month, mean)
tapply(rainfall.long$rain, rainfall.long$year, mean)

plot(Temp,Ozone)

plot(airquality[,1:4])

#Question 1

hist(Temp)
hist(Month)
hist(Wind)
hist(Solar.R)
hist(Ozone)

#E

#Question 2

yearsum<- apply(rainfall, 2, sum)

max(yearsum)

#1930

#Question 3

median(yearsum)

#659.85

#Question 4

years <- rep(1911:1990)

cor(yearsum, years)

#-0.06714516

#Question 5

monthmean



#Question 6

