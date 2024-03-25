f <- c(0,1)
for(i in 3:10){
  f[i]=f[i-1]+f[i-2]
}
cat("The First 10 Fibonacci series number:",f)