# Word Cloud
#https://r-graph-gallery.com/196-the-wordcloud2-library.html
library(wordcloud2)
head(demoFreq)
demoFreq %>% arrange(desc(freq)) %>% head(8)
wordcloud2(data=demoFreq, size=2)

wordcloud2(demoFreq, size=1.6, color='random-dark')

?wordcloud2
wordcloud2(demoFreq, size = 0.5, shape = 'star')
wordcloud2(demoFreq, size = 0.8, shape = 'cube')

# Change the background color
wordcloud2(demoFreq, size=1.6, color='random-light', backgroundColor="gray")



df1 = data.frame(word = c('Mandal','Nayeema','Suroor','Kabir'), size=c(150, 40, 60, 30))
df1
wordcloud2(data = df1)

df2 = data.frame(word = c('Job','Employer','Employee','Hiring'), size=c(30, 45, 60, 35))
df2
wordcloud2(data = df2)

#ggwordcloud-----
#https://cran.r-project.org/web/packages/ggwordcloud/vignettes/ggwordcloud.html
library(ggwordcloud)
data("love_words")
head(love_words)

set.seed(42)
ggplot(love_words_small, aes(label = word)) +  geom_text_wordcloud() +  theme_minimal()
