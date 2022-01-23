# 2020-PM-Orban-Speeches-Analysis
install.packages("tm") #Install the required packages
install.packages("SnowballC")
install.packages("wordcloud")
install.packages("RColorBrewer")
install.packages("dplyr")
install.packages("tidytext")
install.packages("tokenizers")
install.packages("NLP")
install.packages("readr")
install.packages("tidyr")
install.packages("qdap")
install.packages("Rcpp")



library(tm) #Load the required packages
library(SnowballC)
library(wordcloud)
library(RColorBrewer)
library(dplyr)
library(tidytext)
library(tokenizers)
library(NLP)
library(readr)
library(tidyr)
library(qdap)
library(Rcpp)


HU <- readLines(file.choose()) #Import the text file
hungary <- Corpus(VectorSource(HU)) #Load the text file as a corpus


inspect(hungary) #Inspect the content

#Cleaning the text

hungary <- tm_map(hungary, content_transformer(tolower)) #Convert the text to lower case 
hungary_tdm <- TermDocumentMatrix(hungary) #To avoid possible errors, run this code
hungary <- tm_map(hungary, removeNumbers) #Remove numbers
hungary_tdm <- TermDocumentMatrix(hungary) #To avoid possible errors, run this code
hungary <- tm_map(hungary, removeWords, stopwords("english")) #Remove common English stopwords
hungary_tdm <- TermDocumentMatrix(hungary) #To avoid possible errors, run this code
hungary <- tm_map(hungary, removePunctuation) #Remove punctuation
hungary_tdm <- TermDocumentMatrix(hungary) #To avoid possible errors, run this code


inspect(hungary) #Inspect the document content

#Build a Term Document Matrix

hungary_tdm <- TermDocumentMatrix(hungary) 
m <- as.matrix(hungary_tdm)
v <- sort(rowSums(m), decreasing = TRUE)
d <- data.frame(word = names(v), freq = v)


head(d, 10)

#Clean the text by removing several meaningless words

hungary <- tm_map(hungary, removeWords, c("will", "also", "two", "able", "important"))

hungary_tdm <- TermDocumentMatrix(hungary) #problem starts from here. Cannot change this to a matrix.
m <- as.matrix(hungary_tdm)
v <- sort(rowSums(m), decreasing = TRUE)
d <- data.frame(word = names(v), freq = v)


head(d, 10)

hungary <- tm_map(hungary, removeWords, c("can", "must", "like"))

hungary_tdm <- TermDocumentMatrix(hungary) #problem starts from here. Cannot change this to a matrix.
m <- as.matrix(hungary_tdm)
v <- sort(rowSums(m), decreasing = TRUE)
d <- data.frame(word = names(v), freq = v)


head(d, 10)

#Generate the Word Cloud

set.seed(1234)
wordcloud(words = d$word, freq = d$freq, min.freq = 1, max.words = 100, random.order = FALSE, rot.per = 0.35, colors = brewer.pal(8, "Dark2"))

#Find frequent terms and the associations 

findFreqTerms(hungary_tdm, lowfreq = 4)

findAssocs(hungary_tdm, terms = "hungary", corlimit = 0.3)

head(d, 10)

#Plot word frequencies

barplot(d[1:10,]$freq, las = 2, names.arg = d[1:10,]$word, col = "blue", main = "Most Frequent Words - Viktor Orban", ylab = "Word Frequencies")

