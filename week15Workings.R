airQuality <- read.table("airquality.txt", header=TRUE)
airQuality



#Question 1

q1AirQuality <- airQuality[airQuality$Month%in%6 & airQuality$Temp>=75, ]

length(q1AirQuality$Temp)

#24

#Question 2

q2AirQuality <- airQuality[airQuality$Temp>=79, ]

mean(q2AirQuality$Wind)

#8.875949 (to 2 dp)

#Question 3

q3AirQuality <- airquality[!is.na(airquality$Ozone),]
q3AirQuality

cor(q3AirQuality$Wind, q3AirQuality$Ozone)

#-0.6015465 (to 3 dp)

#Question 4

q4AirQuality <- na.omit(airQuality)

cor(q4AirQuality$Solar.R, q4AirQuality$Ozone)

#0.3483417 (to 3 dp)

#Question 5

n <- length(airQuality$Temp)

n

change <- NA

for(i in 2:n)
{
  change[i] <- airQuality[i, 4] - airQuality[i -1, 4]
}

cor(change, Solar.R, use = "complete")

#0.17205 (to 3 dp)
