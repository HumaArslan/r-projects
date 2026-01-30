#file - r8nov25


#desc----

mtcars
str(mtcars)
?str
summary(mtcars)
names(mtcars)
dim(mtcars)
head(mtcars)
tail(mtcars)
head(mtcars,10)
is.na(mtcars)
sum(is.array(mtcars))

#analysis----

head(mtcars,2)
sapply(mtcars, mean)
mean(mtcars$mpg)
min(mtcars$mpg)
max(mtcars$mpg)
range(mtcars$mpg)
sd(mtcars$mpg)
quantile(mtcars$mpg)
summary(mtcars)

#filter----

mtcars[, c('mpg', 'gear')]
sapply(mtcars[1:10, c('mpg', 'gear')], max)



#summaries----
library(dplyr)
mtcars%>% summary()
mtcars%>%mutate(newMPG = mpg * 1.5)
mtcars%>%select(mpg,wt)
mtcars%>%select(mpg,wt) %>% head(6)


df = mtcars
df
df<-df %>%mutate(newMPG = mpg * 1.5)
df
df %>% group_by(gear) %>% summarise(n=n())
df %>% group_by(gear,cyl) %>% summarise(n=n())


#functions----

