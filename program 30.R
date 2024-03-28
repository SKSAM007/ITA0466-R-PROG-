values <- c(90, 50, 70, 80, 70, 60, 20, 30, 80, 90, 20)
mean_value <- mean(values)
median_value <- median(values)
mode_value <- names(sort(table(values), decreasing = TRUE))[1]

print(paste("Mean:", mean_value))
print(paste("Median:", median_value))
print(paste("Mode:", mode_value))

sorted_values <- sort(unique(values), decreasing = TRUE)
second_highest <- sorted_values[2]
third_lowest <- sorted_values[length(sorted_values) - 2]

print(paste("2nd highest value:", second_highest))
print(paste("3rd lowest value:", third_lowest))