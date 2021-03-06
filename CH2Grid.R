### Chapter II.
## Grid Approximation
# define grid
p_grid <- seq(from=0, to=1, length.out= 20)

# define prior
prior <- rep(1, 20)

# compute likelihood at each value in grid
likelihood <- dbinom(6, size= 9, prob= p_grid)

# compute product of likelihood and prior 
unstd.posterior <- likelihood * prior

# standardize the posterior(so it sums to 1)
posterior <- unstd.posterior / sum(unstd.posterior)


plot(p_grid, posterior, type="b",
      xlab="probability of water", ylab="posterior probability")

mtext("20 points")


# The correct density for your grid is determined by how accurate you want your approximation to be. 
# More points means more precision

