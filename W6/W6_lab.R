x <- 1:10
y <- 21:30
plot(x, y, type = "l")

data("iris")
hist(iris$Sepal.Length)
boxplot(iris$Sepal.Length)

plot(density(iris$Sepal.Length))


library(ggplot2)
d1 <- data.frame(x=x, y=y)
ggplot(d1, aes(x = x, y = y )) + 
  geom_point()

ggplot(iris, aes(x = iris$Sepal.Length)) + 
  geom_histogram()

