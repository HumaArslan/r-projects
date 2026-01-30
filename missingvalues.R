x = c(10, 20, 30, 50)
x
is.na(x)
length(x)

x2 = c(10, NA, 20, 30, 50, NA)
x2
is.na(x2)
length(x2)
sum(is.na(x2))

sum(!is.na(x2))

#imputation------
(mv2 = mean(x2, na.rm=T))
x2[is.na(x2)] = mv2
x2

x3 = c(25, 15, 10, 40)
x3
is.na(x3)
length(x3)

x4 = c(20, 15, NA, 20, 30, NA, 50, NA)
x4
is.na(x4)
length(x4)
sum(is.na(x4))

sum(!is.na(x4))

#imputation------
(mv2 = mean(x4, na.rm=T))
x4[is.na(x4)] = mv2
x4
