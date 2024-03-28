# Load the airquality dataset
data(airquality)

# (i) Summary statistics
summary_stats <- summary(airquality)
print(summary_stats)

# (ii) Melt airquality dataset

library(reshape2)
melted_data <- melt(airquality)
print(melted_data)

# (iii) Melt airquality data and specify month and day as "ID variables"
melted_data_with_id <- melt(airquality, id.vars = c("Month", "Day"))
print(melted_data_with_id)

# (iv) Cast the molten airquality dataset with respect to month and date features
casted_data <- dcast(melted_data_with_id, Month + Day ~ variable)
print(casted_data)

# (v) Compute the average of Ozone, Solar.R, Wind, and temperature per month
averages_per_month <- aggregate(. ~ Month, airquality, mean)
print(averages_per_month)
