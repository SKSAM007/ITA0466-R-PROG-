data(airquality)
is_dataframe <- is.data.frame(airquality)
print("Is airquality a data frame?")
print(is_dataframe)
ordered_airquality <- airquality[order(airquality$Month, airquality$Day), ]
cleaned_airquality <- subset(ordered_airquality, select = -c(Solar.R, Wind))
print("Cleaned Data Frame:")
print(cleaned_airquality)
