library(RMySQL)

co <- dbConnect(MYSQL(), user='piuser', password = 'Pass@123', dbname='piit', host='localhost')


co <- dbConnect(MySQL(), user='piuser', password = 'Pass@123', dbname='piit', host='localhost')
co
df = dbGetQuery(co,'select*from employees')
df


df1 = dbGetQuery(co,'select*from mtcars')
df1
