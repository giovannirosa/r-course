mydata <- read.csv(file.choose())
head(mydata)
tail(mydata)

fert_1960 <- mydata[mydata$Year==1960,]
head(fert_1960)
tail(fert_1960)

fert_2013 <- mydata[mydata$Year==2013,]
head(fert_2013)
tail(fert_2013)


life_1960 <- data.frame(Country.Code=Country_Code, Life.Expectancy=Life_Expectancy_At_Birth_1960)
head(life_1960)

life_2013 <- data.frame(Country.Code=Country_Code, Life.Expectancy=Life_Expectancy_At_Birth_2013)
head(life_2013)


merged_1960 <- merge(fert_1960, life_1960, by="Country.Code")
head(merged_1960)

merged_2013 <- merge(fert_2013, life_2013, by="Country.Code")
head(merged_2013)


qplot(data=merged_1960, x=Fertility.Rate, y=Life.Expectancy, 
      colour=Region, size=I(4), shape=I(19),
      alpha=I(0.6), main="Fertility Rate vs Life Expectancy [1960]")

qplot(data=merged_2013, x=Fertility.Rate, y=Life.Expectancy, 
      colour=Region, size=I(4), shape=I(19),
      alpha=I(0.6), main="Fertility Rate vs Life Expectancy [2013]")
