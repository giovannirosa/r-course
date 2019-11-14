getwd()
movies <- read.csv('Section6-Homework-Data.csv')
head(movies)

movies$Day.of.Week <- NULL
movies$Director <- NULL
movies$Movie.Title <- NULL
movies$Release.Date <- NULL
movies$Adjusted.Gross...mill. <- NULL
movies$Gross...mill. <- NULL
movies$IMDb.Rating <- NULL
movies$MovieLens.Rating <- NULL
movies$Overseas...mill. <- NULL
movies$Overseas. <- NULL
movies$Profit...mill. <- NULL
movies$Profit. <- NULL
movies$Runtime..min. <- NULL
movies$US...mill. <- NULL

colnames(movies) <- c('Genre','Studio','Budget','GrossUS')
str(movies)


movies <- movies[(movies$Studio=='Buena Vista Studios' | 
                   movies$Studio=='Fox' | 
                   movies$Studio=='Paramount Pictures' | 
                   movies$Studio=='Sony' | 
                   movies$Studio=='Universal' |
                   movies$Studio=='WB') &
                   (movies$Genre=='action' |
                      movies$Genre=='adventure' |
                      movies$Genre=='animation' |
                      movies$Genre=='comedy' |
                      movies$Genre=='drama'),]


plot <- ggplot(data=movies, aes(x=Genre, y=GrossUS))
plot + geom_jitter(aes(colour=Studio, size=Budget)) + geom_boxplot(alpha=0.8, outlier.colour = NA) + ylab('Gross % US') + ggtitle('Domestic Gross % by Genre') +
  theme(axis.title = element_text(colour='Blue', size=20),
        axis.text = element_text(size=15),
        legend.title = element_text(size=20),
        legend.text = element_text(size=15),
        text = element_text(family = 'Comic Sans MS'),
        plot.title = element_text(colour='Black', size = 30))
