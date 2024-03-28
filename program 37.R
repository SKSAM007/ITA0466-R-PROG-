# Load the Titanic dataset
data(Titanic)

# Convert the Titanic dataset to a data frame
Titanic_df <- as.data.frame(Titanic)

# Load required libraries
library(ggplot2)

# a. Draw a Bar chart to show details of “Survived” on the Titanic based on passenger Class
barplot_survived_class <- ggplot(Titanic_df, aes(x = Class, fill = factor(Survived))) +
  geom_bar(position = "dodge", stat = "count") +
  labs(x = "Passenger Class", y = "Count", title = "Survival Count by Passenger Class") +
  scale_fill_discrete(name = "Survived", labels = c("No", "Yes"))

# b. Modify the above plot based on gender of people who survived
barplot_survived_class_gender <- ggplot(Titanic_df[Titanic_df$Survived == "Yes", ], aes(x = Class, fill = factor(Sex))) +
  geom_bar(position = "dodge", stat = "count") +
  labs(x = "Passenger Class", y = "Count", title = "Survived Passenger Count by Class and Gender") +
  scale_fill_discrete(name = "Gender")

# c. Draw histogram plot to show distribution of feature "Age"
histogram_age <- ggplot(Titanic_df, aes(x = Age)) +
  geom_histogram(binwidth = 5, fill = "blue", color = "black") +
  labs(x = "Age", y = "Frequency", title = "Distribution of Age")

# Print the plots
print(barplot_survived_class)
print(barplot_survived_class_gender)
print(histogram_age)
