
data(iris)
iris

install.packages("caTools")
library(caTools)
set.seed(123) # set a random for the purpose of reproducibility

# splitting the data into the 70-30 

split_ratio <- 0.7

split_indices <- sample.split(iris, SplitRatio = split_ratio)
split_indices

# Create a training and testing sets
train_data <- iris[split_indices, ]
test_data <- iris[!split_indices, ]
train_data
test_data

# Data Scaling 

# Z- Score scaling (Standardization)
install.packages("caret")
library(caret)
data <- iris
scaled_data <- scale(data[, 1:4])
scaled_data
scaled_data_df <- as.data.frame(cbind(scaled_data, data[, 5])) # combine the scaled features with the labels
colnames(scaled_data_df) <- colnames(data)

View(scaled_data_df)











