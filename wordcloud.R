library(tm)
library(RXKCD)
library(wordcloud)
library(wordcloud2)
library(RColorBrewer)

setwd("/Users/kqian/Desktop/R Wordcloud")

addcsv <- read.csv("addv2.csv", header = TRUE)
churncsv <- read.csv("churnv2.csv", header = TRUE)
logocsv <- read.csv("logo.csv", header = TRUE)


#for add customers
pal <- brewer.pal(9, "BuGn")
pal <- pal[-(1:2)]
png("addwordcloud.png", width=1280, height=800)
wordcloud(addcsv$customer, addcsv$mrr, min.freq=2, random.order=F,
          rot.per=.35, colors=brewer.pal(16,"Dark2"))
dev.off()

#for churn customers
pal <- brewer.pal(9, "BuGn")
pal <- pal[-(1:2)]
png("churnwordcloud.png", width=1280, height=800)
wordcloud(churncsv$customer, churncsv$mrr, min.freq=2, random.order=F,
          rot.per=.35, colors = "red")
dev.off()

#for wordcloud fitted into picture
wordcloud2(logocsv, figPath = "cloud.png", size = 0.1, color = "red", backgroundColor = "black")
#wordcloud2(logocsv, figPath = "fortress.png", size = 0.2, color = "red")
