# Managing missing values in data 

# 1. Identify the missing values in the data - We use the is.na()

x <- c(1, 2, NA, 4, 5, NA, NA, 8)
is.na(x)

# Count the missing values in the data 

sum(is.na(x))

## Remove the missing values in the data
## You can also decide to fill the missing values in the data

# basic data 
my_data <- data.frame(
  Name=c("John", "Alice", "John", "Eve"),
  Age = c(30, NA, 30, NA),
  City = c("New York", "San Fransisco", "New York", NA),
  Score = c(95, 88, 95, 92)
)

View(my_data)



# Remove  duplicates
clean_data <- unique(my_data)
View(clean_data)

# Checkinng the missing values in the data 
is.na(my_data)
sum(is.na(my_data))

clean_data <- na.omit(my_data) # removing the missing data using the na.omit()
View(clean_data)

# This can also be achieved by using the complete cases
clean_data2 <- my_data[complete.cases(my_data)]
View(clean_data2)
View(my_data)

# Replacing missing Values 
x
# Example replacing the missing value with a number , say 6
x[is.na(x)] <- 6
x

#Replacing the missng values with the mean
y <- c(2, 5, NA, 9, NA, 5)
mean_value <- mean(y, na.rm = TRUE)
mean_value
y[is.na(y)] <- mean_value
y


# Outlier detection 
install.packages("gridExtra")
library(gridExtra)
x <- c(10, 4, 6, 7, 17, 30, 12, 7, 8, 9, 11, 15, 33, 5)
# hist, Q-Q plot and the box plot 
par(mfrow = c(1, 3))
hist(x, main= "Histogram")
boxplot(x, main = "Boxplot")
qqnorm(x, main = "Normal Q-Q plot")
