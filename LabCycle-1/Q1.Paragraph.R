file_path <-file.choose()
para <-paste(readLines(file_path),collapse=" ")
#Calculating the Word count
words <-unlist(strsplit(gsub("[[:punct:]]","",para),"\\s+"))
cat("No: of words:",length(words))
#Calculating the average Word length
word_length <-nchar(words)
avg_length <- mean(word_length)
cat("Average word length:",avg_length)
#calculating the word with maximum length
max_length <- max(word_length)
cat("Longest word is:",words[word_length==max_length])
#replacing data with data
replaced_para <-gsub("\\bData\\b","Date",para)
cat(replaced_para)
