la <- letters[1:26]
a <- la[1:10]
ua <- LETTERS[1:26]
b <- tail(ua, 10)
c <- ua[22:24]
cat("First 10 English letters in lower case:", a, "\n")
cat("Last 10 English letters in upper case:", b, "\n")
cat("Letters between 22nd to 24th in upper case:", c, "\n")
