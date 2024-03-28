# Load the Iris dataset
data(iris)

# (i) Find dimension, Structure, Summary statistics, Standard Deviation of all features.
print("Dimension:")
print(dim(iris))

print("Structure:")
str(iris)

print("Summary Statistics:")
summary(iris)

print("Standard Deviation of all features:")
sapply(iris[,1:4], sd)

# (ii) Find mean and standard deviation of features grouped by three species of Iris flowers
aggregate(. ~ Species, data = iris, FUN = function(x) c(mean = mean(x), sd = sd(x)))

# (iii) Find quantile value of sepal width and length
print("Quantile of Sepal Width:")
quantile(iris$Sepal.Width)
print("Quantile of Sepal Length:")
quantile(iris$Sepal.Length)

# (iv) Create new data frame named iris1 which have a new column name Sepal.Length.Cate that categorizes “Sepal.Length” by quantile
iris1 <- iris
iris1$Sepal.Length.Cate <- cut(iris1$Sepal.Length, breaks = quantile(iris1$Sepal.Length), labels = FALSE)

# (v) Average value of numerical variables by two categorical variables: Species and Sepal.Length.Cate
aggregate(. ~ Species + Sepal.Length.Cate, data = iris1, FUN = mean)

# (vi) Average mean value of numerical variables by Species and Sepal.Length.Cate
aggregate(. ~ Species + Sepal.Length.Cate, data = iris1, FUN = function(x) mean(x, na.rm = TRUE))

# (vii) Create Pivot Table based on Species and Sepal.Length.Cate
library(pivot_table)

pivot_table(iris1, 
            rows = c("Species", "Sepal.Length.Cate"), 
            cols = c(), 
            aggregator = aggregator_mean, 
            vals = c("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width"))
