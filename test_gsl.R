library("gsl")
dim <- 10
guess <- runif(dim,0,10)
constants <- runif(dim,0,10)

loss <- function(x) {
  total = 0
  for (i in 1:dim)
    total <- total + (x[i] - constants[i])^2
  total
}

loss_gradient <- function(x) {
  2 * (x - constants)
}

ptm <- proc.time()
state <- multimin(guess, loss, loss_gradient, method="conjugate-fr")
print(dim)
print(proc.time() - ptm)
