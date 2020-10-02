library(ggplot2)
mpg
ggplot(mpg, aes(displ, hwy, colour = class, shape = drv, size = cyl))+
  geom_point()

aes(displ, hwy, colour = class)
aes(displ, hwy, shape = drv)
aes(displ, hwy, size = cly)

ggplot(mpg, aes(displ, cty, colour = class)) +
  geom_point()

p <- ggplot(mpg, aes(displ, hwy))

p <- p + geom_point()

p <- labs(y = "my y variable", x = "my x variable")




df <- data.frame(
  x = c(3, 1, 5),
  y = c(2, 4, 6),
  label = c("a", "b", "c")
)

p <- ggplot(df, aes(x, y, label = label)) +
  labs(x = NULL, y = NULL) + #hide axis label
  ggtitle("point") +
  theme(plot.title = element_text(size = 20)) #shrink plot title

p + geom_point() + ggtitle("another title") + theme(plot.title = element_text(size = 20))

p + geom_text() + ggtitle("text")
p + geom_bar(stat = "identity") + ggtitle("bar")
p + geom_tile() + ggtitle("raster")


#install.packages("ggthemes")
library(ggthemes)


ggplot(mpg, aes(displ, hwy)) +
  geom_point() +
  facet_grid(drv~class) 
  
