data(women)
height_factor <- cut(women$height, breaks = c(50, 55, 60, 65, 70, 75),
                     labels = c("Short", "Average", "Above Average", "Tall", "Very Tall"))
print(height_factor)
