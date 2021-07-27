# Method 1: Select the file manually
stats <- read.csv(file.choose())
stats
nrow(stats)
# Imported 195 rows
ncol(stats)
# Imported 5 cols
head(stats)
tail(stats)
str(stats)
summary(stats)
