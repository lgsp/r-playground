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
stats[3, 3]
stats[3, "Birth.rate"]
stats$Internet.users
stats$Internet.users[2]
stats[, "Internet.users"]

levels(stats$Income.Group)
levels(stats$Country.Name)
class(stats$Income.Group)
stats$Income.Group <- as.factor(stats$Income.Group)
class(stats$Income.Group)
levels(stats$Income.Group)
class(stats$Country.Name)
stats$Country.Name <- as.factor(stats$Country.Name)
class(stats$Country.Name)
levels(stats$Country.Name)
