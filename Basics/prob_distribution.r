# Generate random data from a binomial distribution
n_trials <- 100
probability_of_success <- 0.3
data <- rbinom(n = 1000, size = n_trials, prob = probability_of_success)

# Create a histogram to visualize the distribution
hist(data, breaks = seq(0, n_trials, by = 1), main = "Binomial Distribution", xlab = "Number of Successes")
