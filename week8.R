#Question 1:
#We need to ensure that atan(x) <= log(3/y) AND log(3/y) < sinh(z)
#Only option E allows this.

#Question 2:
#First we must create the relevant sequence
k <- 1:100
a <- sin(3*k *pi/44)
#We then evaluate how many elements are positive using 
sum(a > 0)
#56

#Question 3:
#The logical statement is now (a > -1/2 & a <= -1/4)
sum(a > -1/2 & a <= -1/4)
#8

#Question 4:
#We must additionally create the sequence b
b <- cos(5*k *pi/13)
#The relevant logical statement is
# (abs(a) > 1/4 | a < b)
sum(abs(a) > 1/4 | a < b)
#93

#Question 5:
#If x <= 25 then the code evaluates sum(x > 0:49). This counts the number of integers
#from 0 to 49 that x is greater than, which for 0 < x <= 25 is equivalent to 
#ceiling(x) 

#If x > 25 then the evaluates sum(x < 1:50) which is equivalent to
#counting the number of integers from 1 to 50 that are bigger than x
#This is equivalent to ceiling(50 - x)

#Hence A is matched to option [iv] and B is matched to option [ii]
