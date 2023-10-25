# 1. Simple Random Sampling:

# In simple random sampling, each item or individual in the population has an equal chance of being selected.
# Generate a variable x with 1000 random data points between 0 and 1
x <- runif(1000)
# Generate a simple random sample of size 50 from a vector x
sample_result <- sample(x, size = 50)
sample_result

# 2. Stratified Sampling:

#Stratified sampling divides the population into subgroups (strata) based on
# certain characteristics and then samples from each stratum.
library(dplyr)

# Stratified sampling by a categorical variable "group"
stratified_sample <- data %>% group_by(group) %>% sample_n(size = 10)

## 3. Systematic Sampling:

# In systematic sampling, you select every nth item from the population.
# You can use indexing and sequence functions in R to implement systematic sampling. 
# Select every 5th item from a vector x
x
systematic_sample <- x[seq(5, length(x), by = 5)]
systematic_sample
## 4. Cluster Sampling:

#Cluster sampling divides the population into clusters and randomly selects some clusters for the sample.
# You can use random sampling functions or the dplyr package for cluster sampling. 

library(dplyr)
# Randomly select clusters from a data frame with a "cluster" variable
cluster_sample <- data %>% group_by(cluster) %>% sample_n(size = 2)


### 5. Resampling (Bootstrapping):

# Resampling techniques, such as bootstrapping, involve drawing samples with replacement from the 
#original data to estimate parameters or assess variability.
library(boot)
# Generate 1000 bootstrap samples from a data frame "data"
boot_samples <- boot(data, statistic, R = 1000)

## 6. Cross-Validation:

#Cross-validation is a technique for assessing the performance of machine learning models 
#by splitting the data into training and testing sets.
library(caret)
# Perform 10-fold cross-validation for a machine learning model
ctrl <- trainControl(method = "cv", number = 10)
train(model, data, trControl = ctrl)







