# 2020-PM-Orban-Speeches-Analysis
#Upload necessary packages to run this code:
   #install.packages("tm")
   #install.packages("SnowballC")
   #install.packages("wordcloud")
   #install.packages("RColorBrewer")
   #install.packages("readr")
   #install.packages("NLP")
   #install.packages("tokenizers")
#Store the packages
   #library("tm")
   #library("SnowballC")
   #library("wordcloud")
   #library("RColorBrewer")
   #library("readr")
   #library("NLP")
   #library("tokenizers")
#Upload/read txt document (hungary) this document includes speeches of PM Orban in 2020 related to foreign policy
   #hungary <- read_lines("C:/Users/iremb/Desktop/hungary.txt")
   #read_lines(hungary)
#Code
   #hungarytidy <- paste0(hungary, collapse = " ")
   #hungarytidy <- tibble(hungarytidy)
   #str(hungarytidy)

   #hungarytidy <- Corpus(VectorSource(hungarytidy))

   #words <- tokenize_words(hungarytidy)

   #length(words)

   #all_stops <- c("hungary", "countries", "will", "two", "also", "hungarian", "europe", "one",
               "us", "able", "important", "can", "european", "like", "must", "thousand", "country",
               "central","hundred", "people", "see", "need", "climate", "economic", "geopolitical", 
               "increase", "just", "nation", "new", "now", "western", 
               "approach", "eu", "day", "fifty", "five", "governments", 
               "hungarians",
               stopwords("en"))

   #tab <- table(words)
   #tab <- table(removeWords(words[[1]],all_stops))
   #tab <- tibble(word = names(tab), count = as.numeric(tab))
   #tab <- arrange(tab, desc(count))
   #tab


   #head(tab,11)
#When you run the code, you should get this result:
# A tibble: 11 x 2
   word          count
   <chr>         <dbl>
 1 ""             2920
 2 "border"         17
 3 "national"       15
 4 "economy"        13
 5 "energy"         11
 6 "migration"      11
 7 "cooperation"    10
 8 "gas"             9
 9 "agreement"       8
10 "christian"       7
11 "interest"        7

