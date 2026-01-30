
library(VIM)
(rollNo = paste('PIIT', 101:120))
length(rollNo)
(gender = sample(c('M','F'), size=20, replace=T))
(age = round(rnorm(n=20, mean=30, sd=3),0))

(students = data.frame(rollNo, gender, age) )
head(students)
str(students)
students[ c(3,6,7,18), 'age'] = NA
students[ c(7,9,11), 'gender'] = NA
students

str(students)
summary(students)
colSums(is.na(students))
complete.cases(students)
students

students %>% filter(is.na(age))
students %>% filter(!is.na(age))

#imputation-----
students$age[ is.na(students$age)]
which(is.na(students$age))
(mv3 = mean(students$age, na.rm=T))
students$age[ is.na(students$age)] = round(mv3)
students

students %>% filter(is.na(age))

#sleepdata-----
sleep #VIM library
colSums(is.na(sleep))
df=sleep
df
colSums(is.na(df))
complete.cases(df)

df %>% filter(is.na(Dream))
df %>% filter(!is.na(Dream))


#imputation-----
df$Dream[ is.na(df$Dream)]
which(is.na(df$Dream))
(mv4 = mean(df$Dream, na.rm=T))
df$Dream[ is.na(df$Dream)] = round(mv4)
df

df %>% filter(is.na(Dream))

colSums(is.na(df))

df %>% filter(is.na(Sleep))
df %>% filter(!is.na(Sleep))

df$Sleep[ is.na(df$Sleep)]
which(is.na(df$Sleep))
(mv5= mean(df$Sleep,na.rm=T))
df$Sleep[is.na(df$Sleep)]=round(mv5)
df
