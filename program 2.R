x <- 1:10
y <- "Hello, World!"
z <- matrix(c(1,2,3,4,5,6),nrow=3,ncol=2)
for (obj in ls()) {
  cat("Object name:", obj, "\n")
  cat("Type:", typeof(get(obj)), "\n")
  cat("\n")
}