library(data.table)

#read the data
system.time(
  data.table <- 
    fread("soysnp50k_wm82.a2_41317.correct.hmp.txt.gz",
          data.table = FALSE)
)
#user  system elapsed 
#99.88    7.46   98.59 
object.size(data.table)
#6797775104 bytes

#copy it into another object (don't do if you don't have enough memory)
df <- data.table
rm(data.table)
gc()

# checking the begining and the end of this file
head(df)
df[1:10, 1:10]
tail(df)
df[(nrow(df) - 4):nrow(df), (ncol(df) - 4):ncol(df) ]

#split allele
split <- unlist(strsplit(df$alleles, "/"))
seq1 <- seq(from = 1, to = length(split), by = 2)
seq2 <- seq(from = 2, to = length(split), by = 2)
df <- data.frame('rs#'= df[,1], A1 = split[seq1], A2 = split[seq2], df[,-(1:2)])

#tabulation
table(df$alleles)

df <- df[!df$alleles == "C", ]
df <- df[!df$alleles == "T", ]
df <- df[!df$alleles == "G", ]

#split allele
split <- unlist(strsplit(df$alleles, "/"))
seq1 <- seq(from = 1, to = length(split), by = 2)
seq2 <- seq(from = 2, to = length(split), by = 2)
df <- data.frame('rs#'= df[,1], A1 = split[seq1], A2 = split[seq2], df[,-(1:2)])

df <- ad.data.frame(dt)
#or
a1 <- gsub("/.", "", df$alleles)
a2 <- gsub("./", "", df$alleles)
df <- data.frame('rs#'= df[,1], A1 = a1, A2 = a2, df[,-(1:2)])
