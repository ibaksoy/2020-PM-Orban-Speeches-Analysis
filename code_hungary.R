install.packages("tm")
install.packages("SnowballC")
install.packages("wordcloud")
install.packages("RColorBrewer")
install.packages("readr")
install.packages("NLP")
install.packages("tokenizers")



library("tm")
library("SnowballC")
library("wordcloud")
library("RColorBrewer")
library("readr")
library("NLP")
library("tokenizers")

hungary <- read_lines("C:/Users/iremb/Desktop/hungary.txt")
read_lines(hungary)

hungarytidy <- paste0(hungary, collapse = " ")
hungarytidy <- tibble(hungarytidy)
str(hungarytidy)

hungarytidy <- Corpus(VectorSource(hungarytidy))

words <- tokenize_words(hungarytidy)

length(words)

all_stops <- c("hungary", "countries", "will", "two", "also", "hungarian", "europe", "one",
               "us", "able", "important", "can", "european", "like", "must", "thousand", "country",
               "central","hundred", "people", "see", "need", "climate", "economic", "geopolitical", 
               "increase", "just", "nation", "new", "now", "western", 
               "approach", "eu", "day", "fifty", "five", "governments", 
               "hungarians",
               stopwords("en"))

tab <- table(words)
tab <- table(removeWords(words[[1]],all_stops))
tab <- tibble(word = names(tab), count = as.numeric(tab))
tab <- arrange(tab, desc(count))
tab


head(tab,11)




