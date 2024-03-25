l <- 50
p <- numeric(0)
for (num in 2:l) {
  is_prime <- TRUE
  for (divisor in 2:sqrt(num)) {
    if (num %% divisor == 0) {
      is_prime <- FALSE
      break
    }
  }
  if (is_prime) {
    p <- c(p, num)
  }
}
cat("Prime numbers up to", l, ":", p, "\n")
