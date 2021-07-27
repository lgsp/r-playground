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
library(ggplot2)
?qplot
qplot(data=stats, x=Internet.users)
qplot(data=stats, x=Income.Group, y=Birth.rate)
qplot(data=stats, x=Income.Group, y=Birth.rate, size=I(3))
qplot(data=stats, x=Income.Group, y=Birth.rate, size=I(3), 
      colour=I("blue"))
qplot(data=stats, x=Income.Group, y=Birth.rate, geom="boxplot")      

qplot(data=stats, x=Internet.users, y=Birth.rate)
qplot(data=stats, x=Internet.users, y=Birth.rate,
      size=I(4))
qplot(data=stats, x=Internet.users, y=Birth.rate,
      color=I("red"), size=I(4))
qplot(data=stats, x=Internet.users, y=Birth.rate,
      color=Income.Group, size=I(5))

mydf <- data.frame(Countries_2012_Dataset, 
                   Codes_2012_Dataset, 
                   Regions_2012_Dataset)

head(mydf)
#colnames(mydf) <- c("Country", "Code", "Region")
#head(mydf)
rm(mydf)

mydf <- data.frame(Country=Countries_2012_Dataset, 
                   Code=Codes_2012_Dataset, 
                   Region=Regions_2012_Dataset)
tail(mydf)
summary(mydf)

head(stats)
head(mydf)

# Merge data frames
merged <- merge(stats, 
                mydf, 
                by.x = "Country.Code",
                by.y = "Code")
head(merged)

merged$Country <- NULL
str(merged)
merged$Country.Code <- as.factor(merged$Country.Code)
merged$Region <- as.factor(merged$Region)

tail(merged)

qplot(data=merged, x=Internet.users, y=Birth.rate)
qplot(data=merged, x=Internet.users, y=Birth.rate,
      color=Region)

# 1. Shapes
qplot(data=merged, x=Internet.users, y=Birth.rate,
      color=Region, size=I(5), shape=I(12))

# 2. Transparency
qplot(data=merged, x=Internet.users, y=Birth.rate,
      color=Region, size=I(5), shape=I(19),
      alpha=I(0.6))

# 3. Title
qplot(data=merged, x=Internet.users, y=Birth.rate,
      color=Region, size=I(5), shape=I(19),
      alpha=I(0.5),
      main="Birth Rate vs Internet Users")
