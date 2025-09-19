setwd(D:\SLIIT\Y2S1\Staticstics\Lab\IT24102453_Lab06)

#Question 1
n <- 50
p <- 0.85

# i
cat("Q1 i) Distribution: X ~ Binomial(n=50, p=0.85)")

# ii
prob_47_or_more <- 1 - pbinom(46, size = n, prob = p)
cat("Q1 ii) P(X >= 47):", prob_47_or_more)


#Question 2
lambda <- 12

# i
cat("Q2 i) Random Variable: X = Number of calls received per hour")

# ii
cat("Q2 ii) Distribution: X ~ Poisson(lambda=12)")

# iii
prob_15_calls <- dpois(15, lambda)
cat("Q2 iii) P(X = 15):", prob_15_calls)
