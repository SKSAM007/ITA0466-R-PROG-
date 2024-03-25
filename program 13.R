rn <- rnorm(100)
count <- table(round(rn,2))
c <- as.data.frame(count)
print(c)