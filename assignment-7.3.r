#Assignment 7.3

#1. Create a box and whisker plot by class using mtcars dataset.

#Solution:
  
boxplot(mpg~cyl, data=mtcars,main= toupper("Fuel Consumption"), font.main=3,col= topo.colors(3), xlab="Number of Cylinders", 
ylab="Miles per Gallon")

#or

boxplot(mpg~cyl,data=mtcars, main="Car Milage Data",xlab="Number of Cylinders", ylab="Miles Per Gallon")

