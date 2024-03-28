# Load the ChickWeight dataset if not already loaded
if (!"ChickWeight" %in% ls()) {
  data(ChickWeight)
}

# a. Create multi regression model to find the weight of the chicken, by “Time” and “Diet” as predictor variables
multi_regression_model <- lm(weight ~ Time + factor(Diet), data = ChickWeight)

# b. Predict weight for Time=10 and Diet=1
new_data <- data.frame(Time = 10, Diet = 1)
predicted_weight <- predict(multi_regression_model, newdata = new_data)
print(predicted_weight)

# c. Find the error in model for the same
# Get actual weight for Time=10 and Diet=1
actual_weight <- subset(ChickWeight, Time == 10 & Diet == 1)$weight

# Calculate error
error <- predicted_weight - actual_weight
print(error)