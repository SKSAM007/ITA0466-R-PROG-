random_letters <- sample(LETTERS, 100, replace = TRUE)

# Convert the sample to a factor
random_factor <- factor(random_letters)

# Extract five levels from the factor
five_levels <- levels(random_factor)[1:5]

# Print the five levels
print(five_levels)
