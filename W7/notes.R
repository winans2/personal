#ggplot2: Elegant Graphics for Data Analysis: 

library(tidyverse)
#ggplot(data, mapping = aes(x, y))
#toy dataset
df <- tibble(
  x = c(3, 2, 5),
  y = c(2, 4, 6),
  label = c("a", "b", "D")
)
ggplot(df, aes(x, y, label = label)) +
  labs(x = "labs") +
  xlab("xlabs") +
  scale_x_continuous("scale_x")

#text
p + geom_text()
#barplot
p + geom_bar(stat = "identity")
#line
p + geom_line()
#area
p + geom_area
#path
p + geom_path()
#polygon
p + geom_polygon()

#toy dataset 2
y <- c(18, 11, 16)
df2 <- data.frame(x = 1:3,
                  y = y,
                  se = c(1.2, 0.5, 1.0))

#including minimum and maximum information
p2 <- ggplot(df2, aes(x, y, ymin = y - se, ymax = y + se))

p2 + geom_crossbar()
p2 + geom_pointrange()
p2 + geom_smooth(stat = "identity")
p2 + geom_bar(stat = "identity", color = "green", fill = "green") + geom_errorbar()
p2 + geom_linerange()

#points
ggplot(mpg, aes(drv, hwy)) + geom_point()
#jitter
ggplot(mpg, aes(drv, hwy)) + geom_jitter()
#boxplot
ggplot(mpg, aes(drv, hwy)) + geom_boxplot()
#violin
ggplot(mpg, aes(drv, hwy)) + geom_violin()
#histogram
ggplot(mpg, aes(hwy)) + geom_histogram(bins = 30)
#frequency
ggplot(mpg, aes(hwy)) + geom_freqpoly()
#barplot
ggplot(mpg, aes(manufacturer)) + geom_bar()
#line
ggplot(economics, aes(date, uempmed)) + geom_line()

#subsetting the data
ggplot(diamonds, aes(carat, depth)) +
  geom_boxplot(aes(group = cut_width(carat, 0.1)))

#working with maps
# filter electorates in the Sydney metropolitan region
sydney_map <- ozmaps::abs_ced %>% filter(NAME %in% c(
  
))