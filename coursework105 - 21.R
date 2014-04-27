#Question 1

c <- c(88,84,83,95,92,98,111)
c

mean(c)

c - mean(c)

(c - mean(c))^2

sum((c - mean(c))^2)

1/(length(c) - 1) * (sum((c - mean(c))^2))

(1/(length(c) - 1) * (sum((c - mean(c))^2)))^0.5

#Quetion 3


anorexic <- read.table(file("anorexics.dat"))

BPI <- anorexic[,1]
actualWidth <- anorexic[,2]
group <- anorexic[,3]

BPI
actualWidth
group

groupFac <- as.factor(group)

boxplot(BPI~groupFac, range = 0, col = "red")