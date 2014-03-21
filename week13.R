#Week 13

#Quiz 1:
#Inspecting the matrix we can see that, filling column-wise, the
#matrix involves an arithmetic sequence from 2 to 74 increasing by
#a step of 3.
#Hence
#(E) : matrix(seq(2,74,by=3),5,5,byrow=FALSE)
#produces the correct matrix.

#Quiz 2:
#Firstly we need to construct the matrix

mat <- rbind(c(1,-1,0,3,1), c(0,-1,0,1,2), c(1,1,0,1,-1), c(0, 2,1,1,1), c(-1,0,0,0,2))

#Then use solve to invert it
solve(mat)

#This matches the matrix given in (D)

#Quiz 3:

#The matrix has 1 down the diagonal
#-1 on the first off-diagonal
#-2 on the second off-diagonal
#  0 everywhere else

mat <- matrix(0,10,10)
diag(mat) <- 1
for (i in 2:10) {
mat[i,i-1]<-mat[i-1,i]<--1
}
for (i in 3:10) {
mat[i,i-2]<-mat[i-2,i]<--2
}
det(mat)
#775

#Quiz 4
solve(mat)[7,8]
#0.194


#Quiz 5
dets<-rep(0,30)
#Note that such matrices must be at least dimension 3x3
for (size in 3:30) {
mat <- matrix(0,size,size)
diag(mat) <- 1
for (i in 2:size) {
mat[i,i-1]<-mat[i-1,i]<--1
}
for (i in 3:size) {
mat[i,i-2]<-mat[i-2,i]<--2
}
dets[size]<-det(mat)
}
which(round(dets)==190231)
#21
#Note that which(dets==190231) does not work as R has introduced some 
#small rounding error into its calculation
dets[21]-190231
#1.164153e-10

#Quiz 6

#We can find by using nested for loops
#A symmetric 3x3 matrix has 6 distinct entries

max_det <- 0
for (a in 1:6) {
 for (b in 1:6) {
  for (c in 1:6) {
    for (d in 1:6) {
      for (e in 1:6) {
        for (f in 1:6) {
          mat <- rbind(c(a,b,c),c(b,d,e),c(c,e,f))
          cdet <- det(mat)
          if (cdet > max_det) max_det <- cdet
        }
      }
    }
   }
  }
}
max_det
#325

#If we also wanted to find out which matrix produces that
#determinant:

max_det <- 0
for (a in 1:6) {
 for (b in 1:6) {
  for (c in 1:6) {
    for (d in 1:6) {
      for (e in 1:6) {
        for (f in 1:6) {
          mat <- rbind(c(a,b,c),c(b,d,e),c(c,e,f))
          cdet <- det(mat)
          if (cdet > max_det) { 
            max_det <- cdet
            best_mat <- mat
          }
        }
      }
    }
   }
  }
}
best_mat
#     [,1] [,2] [,3]
#[1,]    1    6    6
#[2,]    6    1    6
#[3,]    6    6    1


