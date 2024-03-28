# Load the ChickWeight dataset
data(ChickWeight)

# (i) Order the data frame by "weight" in ascending order grouped by "diet" and extract the last 6 records
ordered_data <- ChickWeight[order(ChickWeight$weight, ChickWeight$diet), ]
last_six_records <- tail(ordered_data, 6)
print(last_six_records)

# (ii) a. Perform melting function based on "Chick", "Time", "Diet" features as ID variables
library(reshape2)
melted_data <- melt(ChickWeight, id.vars = c("Chick", "Time", "Diet"))

# b. Perform cast function to display the mean value of weight grouped by Diet
casted_mean <- dcast(melted_data, Diet ~ ., mean)
print(casted_mean)

# c. Perform cast function to display the mode of weight grouped by Diet
library(dplyr)
casted_mode <- melted_data %>%
  group_by(Diet) %>%
  summarise(Mode = names(sort(table(value), decreasing = TRUE))[1])
print(casted_mode)
