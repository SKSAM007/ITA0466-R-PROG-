# Load the airquality dataset
data(airquality)

# (i) Find any missing values and handle them
missing_values <- sapply(airquality, function(x) sum(is.na(x)))
missing_percentage <- missing_values / nrow(airquality) * 100

for (col in names(airquality)) {
  if (missing_percentage[col] < 10) {
    airquality[[col]] <- ifelse(is.na(airquality[[col]]), mean(airquality[[col]], na.rm = TRUE), airquality[[col]])
  } else {
    airquality[[col]] <- ifelse(is.na(airquality[[col]]), mean(airquality[[col]], na.rm = TRUE), airquality[[col]])
  }
}

# (ii) Apply linear regression using Least Squares Method on "Ozone" and "Solar.R"
lm_model <- lm(Ozone ~ Solar.R, data = airquality)

# (iii) Plot Scatter plot between Ozone and Solar and add regression line
plot(airquality$Solar.R, airquality$Ozone, xlab = "Solar.R", ylab = "Ozone", main = "Scatter plot between Ozone and Solar.R")
abline(lm_model, col = "red")
