s <- "Hello World"
v <- c(1,1,4,7,5,8,8,7,0,2,0)
uc <- unique(strsplit(s,"")[[1]])
un <- unique(v)
cat("Unique characters in string:",uc)
cat("Unique number in vector:",un)