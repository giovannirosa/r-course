getwd()
setwd('/home/grosa/Dev/r-course/')

movies <- read.csv('movies.csv')
head(movies)
colnames(movies) <- c('Film','Genre','CriticRating','AudienceRating','BudgetMillions','Year')
str(movies)

movies$Year <- factor(movies$Year)
summary(movies)


library(ggplot2)

q <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, colour=Genre, size=BudgetMillions)) + 
  geom_point()
q + geom_point() + xlab('Budget Millions $$$')




s <- ggplot(data=movies, aes(x=BudgetMillions))
h <- s + geom_histogram(binwidth = 10, aes(fill=Genre), colour='Black')
s + geom_density(aes(fill=Genre), position = 'stack')



t <- ggplot(data=movies, aes(x=AudienceRating))
t + geom_histogram(binwidth = 10, fill='White', colour='Blue')




u <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, colour=Genre))
u + geom_point() + geom_smooth(fill=NA)

b <- ggplot(data=movies, aes(x=Genre, y=CriticRating, colour=Genre))
b + geom_jitter() + geom_boxplot(size=1.2, alpha=0.5)




v <- ggplot(data=movies, aes(x=BudgetMillions))
v + geom_histogram(binwidth = 10, aes(fill=Genre), colour='Black') + facet_grid(Genre~., scales = 'free')



w <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, colour=Genre))
w + geom_point(aes(size=BudgetMillions)) + geom_smooth() + facet_grid(Genre~Year) + coord_cartesian(ylim = c(0,100))



m <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, colour=Genre, size=BudgetMillions))
m + geom_point() + xlim(50,100) + ylim(50,100)

n <- ggplot(data=movies, aes(x=BudgetMillions))
n + geom_histogram(binwidth = 10, aes(fill=Genre), colour='Black') + coord_cartesian(ylim = c(0,50))



h + xlab('Money Axis') + ylab('Number of Movies') + ggtitle('Movie Budget Distribution') +
  theme(axis.title.x = element_text(colour='DarkGreen', size=20), 
        axis.title.y = element_text(colour='Red', size=20),
        axis.text = element_text(size=15),
        legend.title = element_text(size=20),
        legend.text = element_text(size=15),
        legend.position = c(1,1),
        legend.justification = c(1,1),
        plot.title = element_text(colour='DarkBlue', size = 30, family = 'Courier'),
        )



