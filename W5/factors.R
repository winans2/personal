# bariable gender with 20 "male" entries and 30 "female" entries
gender <- c(rep("male", 20), rep("female", 30))
gender <- as.factor(gender)
gender_chr <- as.character(gender)
# stores gender as 20 1s and 30 2s
# R now treates gender as a nominal variable
summary(gender)
summary(gender_chr)
gender[1] <- NA
gender[1] <- 10
gender[1] <- "female"

str(gender)

numbers <- 1:10
n_chr <- as.character(numbers)
n_chr_f <- as.factor(n_chr)
numbers_f <- as.numeric(n_chr_f)

as.numeric(as.character(n_chr_f))
