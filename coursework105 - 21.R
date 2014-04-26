c <- c(88,84,83,95,92,98,111)
c

mean(c)





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