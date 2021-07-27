mydata <- read.csv(file.choose())
str(mydata)
mydata$Country.Name <- as.factor(mydata$Country.Name)
mydata$Country.Code <- as.factor(mydata$Country.Code)
mydata$Region <- as.factor(mydata$Region)

# Split the data.frame

# In 1960
mydata1960 <- mydata[1:187, ]
mydata1960$Life.Expectancy <- Life_Expectancy_At_Birth_1960
head(mydata1960)
tail(mydata1960)
# Scatterplot 
# Life Expectancy (y-axis) vs Fertility Rate (x-axis)
# by Countrie's Regions
qplot(data=mydata1960, 
      x=Fertility.Rate, 
      y=Life.Expectancy,
      color=Region, size=I(5), shape=I(19),
      alpha=I(0.5),
      main="Life Expectancy vs Fertility Rate in 1960")


# In 2013
mydata2013 <- mydata[188:nrow(mydata), ]
mydata2013$Life.Expectancy <- Life_Expectancy_At_Birth_2013
head(mydata2013)
tail(mydata2013)
# Scatterplot 
# Life Expectancy (y-axis) vs Fertility Rate (x-axis)
# by Countrie's Regions
qplot(data=mydata2013, 
      x=Fertility.Rate, 
      y=Life.Expectancy,
      color=Region, size=I(5), shape=I(19),
      alpha=I(0.5),
      main="Life Expectancy vs Fertility Rate in 2013")

