#Funnel Chart
#https://plotly.com/r/funnel-charts/

library(plotly)
#basic----

fig <- plot_ly(  type = "funnelarea",   text = c("The 1st","The 2nd", "The 3rd", "The 4th", "The 5th"),
                 values = c(7, 4, 3, 2, 1))
fig

#type1---
df2 = data.frame(y=c('Leads', 'Inquiries', 'Forms','Selection', 'FeePaid', 'Enrolment'), x=c(100, 80, 60, 40, 20,10))
df2
fig <- plot_ly()
fig <- fig %>% add_trace(type ='funnel', y=c('Leads', 'Inquiries', 'Forms','Selection', 'FeePaid', 'Enrolment'), x=c(100, 80, 60, 40, 20,10), marker = list(color = c('red','pink','brown', 'violet','orange','yellow'), line = list(width=1, color='red')))
fig <- fig %>% layout(yaxis = list(categoryarray= c('Leads', 'Inquiries', 'Forms','Selection', 'FeePaid', 'Enrolment')))
fig               

fig <- plot_ly(  type = "funnelarea",   text = c("The 1st","The 2nd", "The 3rd", "The 4th", "The 5th"),
                 values = c(7, 4, 3, 2, 1))
fig



#type1---
df3 = data.frame(y=c('class', 'students', 'Rollno','subjects', 'Marks', 'Enrolment'), x=c(85, 70, 65, 50, 35,20))
df3
fig1 <- plot_ly()
fig1 <- fig1 %>% add_trace(type ='funnel', y=c('class', 'students', 'ROllno','subjects', 'Marks', 'Enrolment'), x=c(85, 70, 65, 50, 35,20), marker = list(color = c('white','green','black', 'violet','orange','yellow'), line = list(width=2, color='black')))
fig1 <- fig1 %>% layout(yaxis = list(categoryarray= c('class', 'students', 'ROllno','subjects', 'Marks', 'Enrolment')))
fig1                     


str(demoFreq)
desc(demoFreq)
names(demoFreq)
nrow(demoFreq)
dim(demoFreq)
