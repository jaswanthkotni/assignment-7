
#1. Histogram for all variables in a dataset mtcars. Write a program to create histograms for all columns.

#Ans_1

library(purrr)
library(tidyr)
library(ggplot2)
mtcars %>%
keep(is.numeric) %>%
gather() %>%
ggplot(aes(value)) +
facet_wrap(~ key,scales = "free") +
geom_histogram()

#stat_bin is suitable only for continuous x data. 
#If our x data is discrete, we probably want to use stat_count.


#2. Check the probability distribution of all variables in mtcars

#Ans_2

library(ggplot2)
mtcars %>%
keep(is.numeric) %>%
gather() %>%
ggplot(aes(value)) +
facet_wrap(~ key,scales = "free") +
stat_density()



#3. Write a program to create boxplot for all variables.

#Ans_3

library(ggplot2)
library(reshape)
m1 <- melt(mtcars)
ggplot(m1,aes(x = variable,y = value)) + facet_wrap(~variable) + geom_boxplot()
