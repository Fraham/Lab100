#Week 16

##Quiz 1##
##########

#Firstly we need to load in the BubbleSort code

BubbleSort <- function( x ){
  if( !is.numeric(x) | !is.vector(x) ) stop("x must be a numerical vector.")
  num.swaps <- 0
  num.compare <- 0
  if (length(x) > 1) {
    current.swaps <- -1
    while(current.swaps != 0){
      current.swaps <- 0
      for(i in 1:(length(x)-1)){
        num.compare <- num.compare + 1
        if(x[i] > x[i+1]){
          x[c(i,i+1)]<-x[c(i+1,i)]
          num.swaps <- num.swaps + 1
          current.swaps <- current.swaps + 1
        }
      }
    }
  }
  return(list(x=x, num.swaps=num.swaps, num.compare=num.compare))
}

x <- c(seq(12,28,by=4),seq(10,0,by=-1),seq(19,11,by=-2))
BubbleSort(x)

#From the list we see num.swaps = 139

#To adapt the code we just need to change the inequality
# if(x[i] > x[i+1]) to be if(x[i] < x[i+1])


BubbleSortD <- function( x ){
  if( !is.numeric(x) | !is.vector(x) ) stop("x must be a numerical vector.")
  num.swaps <- 0
  num.compare <- 0
  if (length(x) > 1) {
    current.swaps <- -1
    while(current.swaps != 0){
      current.swaps <- 0
      for(i in 1:(length(x)-1)){
        num.compare <- num.compare + 1
        if(x[i] < x[i+1]){ ###################
          x[c(i,i+1)]<-x[c(i+1,i)]
          num.swaps <- num.swaps + 1
          current.swaps <- current.swaps + 1
        }
      }
    }
  }
  return(list(x=x, num.swaps=num.swaps, num.compare=num.compare))
}

BubbleSortD(x)

#Here num.swaps = 71

#######
#Quiz 3:
#######

#To adapt the algorithm to terminate at a set number of swaps
#we need to add an extra argument to the function
#and also add an extra return() command within the for loop:

BubbleSortD <- function( x , max.swaps){ ########
  if( !is.numeric(x) | !is.vector(x) ) stop("x must be a numerical vector.")
  num.swaps <- 0
  num.compare <- 0
  if (length(x) > 1) {
    current.swaps <- -1
    while(current.swaps != 0){
      current.swaps <- 0
      for(i in 1:(length(x)-1)){
        num.compare <- num.compare + 1
        if(x[i] < x[i+1]){
                           x[c(i,i+1)]<-x[c(i+1,i)]
                           num.swaps <- num.swaps + 1
                           current.swaps <- current.swaps + 1
                           if (num.swaps == max.swaps) return(list(x=x, num.swaps = max.swaps, num.compare = num.compare)) ######
        }
      }
    }
  }
  return(list(x=x, num.swaps=num.swaps, num.compare=num.compare))
}

y <- rep(0,50)
y[seq(1,49,by=2)]<- 25:1
y[seq(2,50,by=2)]<- 5:29
BubbleSortD(y,200)$x[20]

#The 20th element of the partial ordered vector is 17.

#######
#Quiz 4
#######

value <- array(0,dim=c(16,6,8,6,3))

for (i2 in 0:15) {
  for (i5 in 0:5) {
    for (i10 in 0:7) {
      for (i20 in 0:5) {
        for (i50 in 0:2) {
          value[i2+1,i5+1,i10+1,i20+1,i50+1] <- 2*i2 + 5*i5 + 10*i10 + 20*i20 + 50*i50
        }
      }
    }
  }
}

sum(value >= 100)
#11666

###
#Quiz 5
###

#The set of combinations where there are
#fewer than 10 2ps and more than 3 5ps
#can be retrieved by subscripting:

vsub <- value[1:10,5:6,,,]

#We then count how many of these are >= 100

sum(vsub >=100)
#2482