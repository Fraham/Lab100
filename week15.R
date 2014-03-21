#Week 15

airquality <- read.table("airquality.txt")

#Quiz 1

sum(airquality$Month==6 & airquality$Temp>=75)
#24

#Quiz 2
mean(airquality$Wind[airquality$Temp>=79])
#8.88

#Quiz 3
airquality2 <- airquality[!is.na(airquality$Ozone),]
cor(airquality2$Wind,airquality2$Ozone)
#-0.602

#Alternatively use
cor(airquality$Wind,airquality$Ozone,use="pair")
#-0.602

#Quiz 4
airquality3 <- na.omit(airquality)
cor(airquality3$Ozone,airquality3$Solar.R)
#0.348

#Quiz 5
#First get the data into chronological order
airquality <- airquality[order(airquality$Month,airquality$Day),]
l <- (length(airquality$Temp)-1)
airquality$Change <- airquality$Temp - c(NA,airquality$Temp[1:l])
cor(airquality$Change,airquality$Solar.R,use="pair")
#0.172