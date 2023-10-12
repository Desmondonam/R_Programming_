# Sample data
data <- c(12, 18, 22, 25, 30, 35, 38, 42, 50, 55, 58, 60, 70)

# 1. Measures of Central Tendency
# Mean
mean_value <- mean(data)
cat("Mean:", mean_value, "\n")

# Median
median_value <- median(data)
cat("Median:", median_value, "\n")

# Mode (if any)
table_result <- table(data)
modes <- names(table_result[table_result == max(table_result)])
if(length(modes) > 1) {
  cat("Modes:", paste(modes, collapse = ", "), "\n")
} else {
  cat("Mode:", modes, "\n")
}

# 2. Measures of Dispersion
# Range
range_values <- range(data)
cat("Range:", range_values[1], "to", range_values[2], "\n")

# Variance
variance_value <- var(data)
cat("Variance:", variance_value, "\n")

# Standard Deviation
sd_value <- sd(data)
cat("Standard Deviation:", sd_value, "\n")

# Interquartile Range (IQR)
iqr_value <- IQR(data)
cat("IQR:", iqr_value, "\n")

# 3. Frequency and Count
frequency_table <- table(data)
cat("Frequency Table:\n")
print(frequency_table)

# 4. Summary Statistics
summary_stats <- summary(data)
cat("Summary Statistics:\n")
print(summary_stats)

# 5. Histogram
hist(data, main = "Histogram", xlab = "Values", ylab = "Frequency")

# 6. Box Plot
boxplot(data, main = "Box Plot", ylab = "Values")

# 7. Correlation (two datasets)
data1 <- c(1, 2, 3, 4, 5, 6)
data2 <- c(2, 3, 5, 7, 8, 10)
correlation_coefficient <- cor(data1, data2)
cat("Correlation Coefficient:", correlation_coefficient, "\n")


#------------------------------------------Hypothesis tests ---------------
# One Sample T tests
# Sample data
data <- c(18, 20, 22, 24, 26, 28, 30, 32, 34, 36)

# Hypothesized population mean
mu <- 25

# Perform a one-sample t-test
t_test_result <- t.test(data, mu = mu)

# Print the t-test result
print(t_test_result)


## 2 Sample T - Test
# Sample data for two groups
group1 <- c(58, 60, 62, 64, 66)
group2 <- c(54, 56, 58, 60, 62)

# Perform a two-sample t-test
t_test_result <- t.test(group1, group2)

# Print the t-test result
print(t_test_result)

########## Chi-squared test
# Observed frequencies
observed <- c(25, 30, 35, 40)

# Expected proportions (e.g., equal proportions for a uniform distribution)
expected_proportions <- rep(1/4, length(observed))

# Perform a chi-squared goodness-of-fit test
chi_squared_test_result <- chisq.test(observed, p = expected_proportions)

# Print the chi-squared test result
print(chi_squared_test_result)

### Chi squared test of independence
# Create a contingency table
data <- matrix(c(20, 15, 10, 25, 30, 40), nrow = 2)

# Perform a chi-squared test of independence
chi_squared_test_result <- chisq.test(data)

# Print the chi-squared test result
print(chi_squared_test_result)

########   One way Anova
# Sample data for multiple groups
group1 <- c(20, 22, 24, 26, 28)
group2 <- c(30, 32, 34, 36, 38)
group3 <- c(40, 42, 44, 46, 48)

# Perform a one-way ANOVA
anova_result <- aov(c(group1, group2, group3) ~ rep(1:3, each = 5))

# Print the ANOVA result
print(summary(anova_result))





