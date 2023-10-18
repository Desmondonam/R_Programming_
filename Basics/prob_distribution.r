# Generate random data from a binomial distribution
n_trials <- 100
probability_of_success <- 0.3
data <- rbinom(n = 1000, size = n_trials, prob = probability_of_success)

# Create a histogram to visualize the distribution
hist(data, breaks = seq(0, n_trials, by = 1), main = "Binomial Distribution", xlab = "Number of Successes")

## Normal Distribution 
z<-seq(-3.5,3.5,0.1)  # 71 points from -3.5 to 3.5 in 0.1 steps
q<-seq(0.001,0.999,0.001)  # 1999 points from 0.1% to 99.9% on 0.1% steps
dStandardNormal <- data.frame(Z=z, 
                              Density=dnorm(z, mean=0, sd=1),
                              Distribution=pnorm(z, mean=0, sd=1))  
qStandardNormal <- data.frame(Q=q, 
                              Quantile=qnorm(q, mean=0, sd=1))  
head(dStandardNormal)

head(qStandardNormal)


'''
Q: Assume a random variable Z is distributed according to the normal distribution with mean 6 and standard deviation 4. 
What is the probability that Z takes on a value between -1 and 3 ?
'''
# A: subtract the c.d. at -1 from the c.d. at 3
pnorm(3, 6, 4) - pnorm(-1, 6, 4)
'''
Q: Assume a random variable Z is distributed according to the normal distribution with mean 20 and standard deviation 10. 
What is the 90% confidence interval around the mean for the expected value of Z?
'''
# A: Use the quantile function
upper <- qnorm(0.95, 20, 10)
lower <- qnorm(0.05, 20, 10)
c(lower, upper)

### Poison Distribution 
lower<-qpois(0.001, lambda=2.5)
upper<-qpois(0.999, lambda=2,5)
n<-seq(lower,upper,1)
q<-seq(0.001,0.999,0.001)
dPoisson25 <- data.frame(N=n, 
                         Density=dpois(n, lambda=2.5),
                         Distribution=ppois(n, lambda=2.5))  
qPoisson25 <- data.frame(Q=q, Quantile=qpois(q, lambda=2.5))  
head(dPoisson25)

head(qPoisson25)





