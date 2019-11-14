stats <- read.csv(file.choose())
head(stats)
head(stats$Country.Name)
stats[,2]
summary(stats)

filter <- stats$Internet.users > 90
stats[filter,]
stats[stats$Country.Name == "United States",]

library(ggplot2)

?qplot

qplot(data=stats, x=Internet.users)
qplot(data=stats, x=Internet.users, y=Birth.rate, 
      colour=Income.Group, size=I(4))


mydf <- data.frame(Countries_2012_Dataset, Codes_2012_Dataset,
                   Regions_2012_Dataset)

head(mydf)
colnames(mydf) <- c("Country", "Code", "Region")


merged <- merge(stats, mydf,  by.x="Country.Code", by.y="Code")
head(merged)
merged$Country <- NULL

qplot(data=merged, x=Internet.users, y=Birth.rate, 
      colour=Region, size=I(4), shape=I(19),
      alpha=I(0.6), main="Birth rate vs Internet users")
