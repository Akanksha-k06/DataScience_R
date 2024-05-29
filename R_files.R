a_q<-datasets::airquality

#top and bottom 15 rows
head(airquality,15)
tail(airquality,15)

#all rows and first 3 columns
airquality[,c(1:3)]

#6th index column is excluded 
df<-airquality[,-6]

#summary gives min, 1st quartile , median, mean , 3rd quartile ,max , na's
summary(airquality$Solar.R)
summary(airquality)

#plotting two columns and entire dataset
plot(airquality$Temp,airquality$Wind,type='p')
plot(airquality)

#to give headings and labels to plots
plot(airquality$Ozone,main = 'ozone concentration', xlab = 'values',
     ylab = 'ozone levels', col = 'blue')

#barplot
#horiz true means horizontal bars , horiz false means vertical bars 
#axes true means values will be displayed on axis else not
barplot(airquality$Ozone,main = 'ozone concentration in R', 
        ylab = 'ozone levels',col = 'pink',horiz = F , axes = T)

#histogram
hist(airquality$Temp,main = 'solar radiation', col = 'red')

#single box plot
boxplot(airquality$Wind,main='Boxplot of wind')
#to find outliers
boxplot.stats(airquality$Wind)$out

#multiple boxplots
boxplot(airquality[,1:4],main='multiple')

#margin of the grid(mar),
#no of rows and columns(mfrow),
#whether a border is to be included(bty)
#and position of the
#labels(las: 1 for horizontal, las: 0 for vertical)
#bty box around the plot
par(mfrow=c(3,3), mar=c(2,5,2,1), las=0, bty="o")

plot(airquality$Ozone)
plot(airquality$Ozone, airquality$Wind)
plot(airquality$Ozone, type= "l")
plot(airquality$Ozone, type= "l")
plot(airquality$Ozone, type= "l")
barplot(airquality$Ozone, main = 'Ozone Concenteration in air',
        xlab = 'ozone levels', col='green', horiz = T)
hist(airquality$Solar.R)
boxplot(airquality$Solar.R)
boxplot(airquality[, 0:4], main='Multiple Box plots')




