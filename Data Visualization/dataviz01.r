'''
The more can be found here 
https://www.analyticsvidhya.com/blog/2015/07/guide-data-visualization-r/


Here we are to create:
Basic Visualization

Histogram
Bar / Line Chart
Box plot
Scatter plot


Advanced Visualization

Heat Map
Mosaic Map
Map Visualization
3D Graphs
Correlogram

'''

###### Histogram 
library(RColorBrewer)
data(VADeaths)
par(mfrow=c(2,3))
hist(VADeaths,breaks=10, col=brewer.pal(3,"Set3"),main="Set3 3 colors")
hist(VADeaths,breaks=3 ,col=brewer.pal(3,"Set2"),main="Set2 3 colors")
hist(VADeaths,breaks=7, col=brewer.pal(3,"Set1"),main="Set1 3 colors")
hist(VADeaths,,breaks= 2, col=brewer.pal(8,"Set3"),main="Set3 8 colors")
hist(VADeaths,col=brewer.pal(8,"Greys"),main="Greys 8 colors")
hist(VADeaths,col=brewer.pal(8,"Greens"),main="Greens 8 colors")


#### Line and Bar charts 
plot(AirPassengers,type="l")  #Simple Line Plot

### Bar graphs
barplot(iris$Petal.Length) #Creating simple Bar Graph
barplot(iris$Sepal.Length,col  = brewer.pal(3,"Set1"))
barplot(table(iris$Species,iris$Sepal.Length),col  = brewer.pal(3,"Set1")) #Stacked Plot


## Box Plots

data(iris)
par(mfrow=c(2,2))
boxplot(iris$Sepal.Length,col="red")
boxplot(iris$Sepal.Length~iris$Species,col="red")
boxplot(iris$Sepal.Length~iris$Species,col=heat.colors(3))

boxplot(iris$Sepal.Length~iris$Species,col=topo.colors(3))

### Scatter plot 
plot(x=iris$Petal.Length) #Simple Scatter Plot
plot(x=iris$Petal.Length,y=iris$Species) #Multivariate Scatter Plot

#Help visualization 
plot(iris,col=brewer.pal(3,"Set1"))

#Pie Chats 
pie(table(iris$Species))

## Advanced Visualization
# Mosaic Plots 
data(HairEyeColor)
mosaicplot(HairEyeColor)

## Heatmaps
heatmap(as.matrix(mtcars))

install.packages("devtools")
library(devtools)

devtools::install_github("rstudio/leaflet")

library(magrittr)
library(leaflet)
m <- leaflet() %>%
  addTiles() %>%  # Add default OpenStreetMap map tiles
  addMarkers(lng=77.2310, lat=28.6560, popup="The delicious food of chandni chowk")
m  # Print the map




