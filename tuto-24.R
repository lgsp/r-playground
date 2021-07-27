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

stats[1:10, ]
stats[3:9, ]
stats[c(4, 100), ]

is.data.frame(stats[1, ])
is.data.fram(stats[, 1])
is.data.frame(stats[, 1, drop=F])

head(stats)
stats$Birth.rate * stats$Internet.users
stats$Birth.rate + stats$Internet.users

head(stats)
stats$MyCalc <- stats$Birth.rate * stats$Internet.users
stats$xyz <- 1:5
head(stats, n=10)
stats$MyCalc <- NULL
stats$xyz <- NULL
head(stats)

filter <- stats$Internet.users < 2
stats[filter, ]

stats[stats$Birth.rate > 40, ]

stats[stats$Birth.rate > 40 & stats$Internet.users < 2, ]
stats[stats$Income.Group == "High income", ]
levels(stats$Income.Group)
str(stats)
stats[stats$Country.Name == "Malta", ]
