library(dplyr)

#rbind----
#no and name of cols to be same
(df1 = data.frame(rollno = 1:5, name = paste('Student',1:5)))
(df2 = data.frame(rollno = 11:15, name = paste('Student',11:15)))

df12 = rbind(df1, df2)
df12

(df5 = data.frame(rollno = 21:30, name = paste('Student',10:30)))
(df6 = data.frame(rollno = 31:40, name = paste('Student',31:40)))
df56 = rbind(df5, df6)
df56


#cbind-----
#no of rows to be same, names of cols can be same of different
(df3 = data.frame(rollno = 1:5, name = paste('Student',1:5)))
(df4 = data.frame(rollno = 1:5, gender = c('M','F','M','F','M')))

df34 = cbind(df3, df4)
df34

(df7 = data.frame(rollno = 26:50, name = paste('Student',26:50)))
(df8 = data.frame(rollno = 26:50, gender = c('M','F','M','F','M','M','F','M','F','M','M','F','M','F','M','M','F','M','F','M','M','F','M','F','M')))

df78 = cbind(df7, df8)
df78

#join-----
#https://statisticsglobe.com/r-dplyr-join-inner-left-right-full-semi-anti
df34B = merge(df3, df4, by='rollno')
df34B

df22 = merge(df1, df2, by = 'rollno')
df22

gender = sample(x=c('M','F'), size=11, replace=T)


df20 = merge(df2, df4, by='rollno', all.x=T, all.y=F)
df20
