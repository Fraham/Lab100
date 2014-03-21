BubbleSort <- function( x )
{
  if( !is.numeric(x) | !is.vector(x) ) stop("x must be a numerical vector.")
  num.swaps <- 0
  num.compare <- 0
  if (length(x) > 1) 
  {
    current.swaps <- -1
    while(current.swaps != 0)
    {
      current.swaps <- 0
      for(i in 1:(length(x)-1))
      {
        num.compare <- num.compare + 1
        if(x[i] > x[i+1])
        {
          x[c(i,i+1)]<-x[c(i+1,i)]
          num.swaps <- num.swaps + 1
          current.swaps <- current.swaps + 1
        }
      }
    }
  }
  return(list(x=x, num.swaps=num.swaps, num.compare=num.compare))
}

InserseBubbleSort <- function( x )
{
  if( !is.numeric(x) | !is.vector(x) ) stop("x must be a numerical vector.")
  num.swaps <- 0
  num.compare <- 0
  if (length(x) > 1) 
  {
    current.swaps <- -1
    while(current.swaps != 0)
    {
      current.swaps <- 0
      for(i in 1:(length(x)-1))
      {
        num.compare <- num.compare + 1
        if(x[i] < x[i+1])
        {
          x[c(i,i+1)]<- x[c(i+1,i)]
          num.swaps <- num.swaps + 1
          current.swaps <- current.swaps + 1
        }
      }
    }
  }
  return(list(x=x, num.swaps=num.swaps, num.compare=num.compare))
}

ModInserseBubbleSort <- function( x, amount )
{
  if( !is.numeric(x) | !is.vector(x) ) stop("x must be a numerical vector.")
  num.swaps <- 0
  num.compare <- 0
  if (length(x) > 1) 
  {
    current.swaps <- -1
    while(current.swaps != 0 && num.swaps < amount)
    {
      current.swaps <- 0
      for(i in 1:(length(x)-1))
      {
        if(num.swaps < amount)
        {
          num.compare <- num.compare + 1
          if(x[i] < x[i+1])
          {
            x[c(i,i+1)]<- x[c(i+1,i)]
            num.swaps <- num.swaps + 1
            current.swaps <- current.swaps + 1
          }
        }
      }
    }
  }
  return(list(x=x, num.swaps=num.swaps, num.compare=num.compare))
}

BubbleSort(c( 7, 4, 1, 9))

data <- c(27, 37, 57, 91, 20, 90, 94, 66, 63, 6)
BubbleSort( data )$x
sort( data )



#Question 1

BubbleSort(x <- c(seq(12,28,by=4),seq(10,0,by=-1),seq(19,11,by=-2)))

#139

#Question 2

InserseBubbleSort(x <- c(seq(12,28,by=4),seq(10,0,by=-1),seq(19,11,by=-2)))

#71

#Question 3

y <- rep(0,50)
y[seq(1,49,by=2)]<- 25:1
y[seq(2,50,by=2)]<- 5:29

j <- ModInserseBubbleSort(y, 200)
j[[1]][20]

#17

#Question 4

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

#Question 4


vsub <- value[1:10,5:6,,,]

#We then count how many of these are >= 100

sum(vsub >=100)
#2482