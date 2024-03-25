num <- as.integer(readline(prompt = "Enter a number: "))
factors <- c()
for (i in 1:num) {
  if (num %% i == 0) {
    factors <- c(factors, i)
  }
}
cat("Factors of", num, "are:", factors, "\n")
