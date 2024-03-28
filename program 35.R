# Load required libraries
library(ggplot2)

# Load the ChickWeight dataset if not already loaded
if (!"ChickWeight" %in% ls()) {
  data(ChickWeight)
}

# a. Create Box plot for "weight" grouped by "Diet"
boxplot_weight_by_diet <- ggplot(ChickWeight, aes(x = factor(Diet), y = weight)) +
  geom_boxplot() +
  labs(x = "Diet", y = "Weight", title = "Box plot of Weight by Diet")

# b. Create a Histogram for "weight" features belong to Diet-1 category
histogram_weight_diet1 <- ggplot(subset(ChickWeight, Diet == 1), aes(x = weight)) +
  geom_histogram(binwidth = 10, fill = "blue", color = "black") +
  labs(x = "Weight", y = "Frequency", title = "Histogram of Weight for Diet-1")

# c. Create Scatter plot for "weight" vs "Time" grouped by Diet
scatter_weight_time_by_diet <- ggplot(ChickWeight, aes(x = Time, y = weight, color = factor(Diet))) +
  geom_point() +
  labs(x = "Time", y = "Weight", title = "Scatter plot of Weight vs Time by Diet")

# Print the plots
print(boxplot_weight_by_diet)
print(histogram_weight_diet1)
print(scatter_weight_time_by_diet)
