'''
Here is a general process of scaling of data


Load and preprocess your data.
Choose an appropriate scaling method based on the characteristics of your data and analysis.
Apply the chosen scaling method to your data, ensuring that you perform the same scaling on
both the training and test datasets.
Use the scaled data for your analysis, such as building machine learning models or conducting statistical tests.
'''

#Min-Max Scaling:
 # Min-max scaling, also known as feature scaling, scales the data to a specific range, typically between 0 and 1.

scaled_data <- scale(data, center = FALSE, scale = apply(data, 2, range))

#Z-Score (Standardization) Scaling:

# Z-score scaling standardizes the data to have a mean of 0 and a standard deviation of 1.
standardized_data <- scale(data, center = TRUE, scale = TRUE)
# Robust Scaling:

# Robust scaling is a method that scales data based on the median and interquartile range (IQR), 
# making it robust to outliers.
scaled_data <- scale(data, center = function(x) median(x), scale = function(x) IQR(x))


