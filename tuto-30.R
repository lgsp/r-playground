movies <- read.csv(file.choose())
head(movies)
colnames(movies) <- c("Film", "Genre", "CriticRating", 
                      "AudienceRating", "BudgetMillions", "Year")
head(movies)
tail(movies)
str(movies)
summary(movies)
movies$Film <- factor(movies$Film)
movies$Genre <- factor(movies$Genre)
movies$Year <- factor(movies$Year)
str(movies)

library(ggplot2)

ggplot(data=movies, aes(x=CriticRating, y=AudienceRating))

# add geometry
ggplot(data=movies, aes(x=CriticRating, y=AudienceRating)) + 
  geom_point()

# add color
ggplot(data=movies, aes(x=CriticRating, 
                        y=AudienceRating,
                        color=Genre)) + 
  geom_point()

# add size
ggplot(data=movies, aes(x=CriticRating, 
                        y=AudienceRating,
                        color=Genre,
                        size=Genre)) + 
  geom_point()

# add size + better way
ggplot(data=movies, aes(x=CriticRating, 
                        y=AudienceRating,
                        color=Genre,
                        size=BudgetMillions)) + 
  geom_point()
