values <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12)
dimensions <- c(3, 2, 2)
dimnames_list <- list(
  c("A1", "A2", "A3"),
  c("B1", "B2"),
  c("C1", "C2")
)
arr <- array(values, dim = dimensions, dimnames = dimnames_list)
print(arr)
