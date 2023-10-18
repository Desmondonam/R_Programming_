# Create sample data for a two-way ANOVA
factor1 <- factor(rep(1:2, each = 15))
factor2 <- factor(rep(1:3, times = 10))
values <- rnorm(30)

# Combine the data into a data frame
data <- data.frame(Factor1 = factor1, Factor2 = factor2, Value = values)

# Perform a two-way ANOVA
anova_result <- aov(Value ~ Factor1 * Factor2, data = data)

# Summarize the ANOVA results
summary(anova_result)