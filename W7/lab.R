#esquissee!!!

#some descriptive statistics
milk <- read.table("W7/milk.txt", header = T)
head(milk)
colnames(milk)
milk$treat <- as.factor(milk$treat)
str(milk)
glimpse(milk)

#mean
tapply(milk$yield, milk$treat, mean)
#range
tapply(milk$yield, milk$treat, range)
#quantiles
quantile(milk$yield, 0.25)

#analysis of variance
aov.milk <- aov(milk$yield ~ milk$treat) # or aov(yield ~ treat, data = milk)
#linear regression
lm.milk <- lm(milk$yield ~ milk$treat)
summary(aov.milk)
#create anova table
anova(lm.milk)

milk.residuals <- aov.milk$residuals
#### Assumptions ####
#outlier detection
boxplot.stats(iris$Sepal.Length)$out

boxplot(milk$yield ~ milk$treat)

#library(outliers)

#normality
shapiro.test(milk.residuals)
nortest::lillie.test(milk.residuals)
#graphical options
qqnorm(milk.residuals)
fBasics::qqnormPlot(milk.residuals)
car::qqPlot(milk.residuals)
ggpubr::ggqqplot(milk.residuals)
ggplot2::qplot(sample = milk.residuals)

#heteroskedasticity
bartlett.test(yield~trea, data=milk)

car::dwt(lm(aov.milk))

## independency - durbin watson
car::dwt(lm(aov.milk))

plot(aov.milk)

par(mfrow=c(2,2))
plot(aov.milk)

par(mfrow=c(1,1))

# Contrasts
#creating the coefficients






#more complex data
data(iris)
iris$size <- ifelse(iris$Sepal.Length < median(iris$Sepal.Length), "small", "big")
table(iris$Species)
xtabs(~ iris$Species, iris$size)

prop.table((table(iris$Species, iris$size)))

summarytools::ctable(x = iris$Species,
                     y = iris$size,
                     chisq = TRUE, 
                     headings = TRUE)

summarytools::descr(iris,
                    headings = FALSE,
                    stat = "common")

summarytools::dfSummary(iris)

#install.packages("corrplot")
#correlation
correl <- cor(iris[,1:4])
corrplot::corrplot(correl, type = "lower", order = "hclust", tl.col = "black", tl.srt = 45)

mod <- stats::lm(mpg ~ am * cyl, data = mtcars)
#visualize coefficients
install.packages("ggstatsplot")
ggstatsplot::ggcoefstats(mod)


##RCBD##
rcbdx <- read.table("rcbd.txt", h=TRUE)


#GLM
counts <- c(18, 17, 15, 20, 10, 20, 25, 13, 12)
outcome <- gl(3,1,9)
treatment <- gl(3,3)
data.frame(treatment, outcome, counts)
glm.D93 <- glm(counts ~ outcome + treatment, family = poisson())
anova(glm.D93)
summary(glm.D93)

#Mixed models
install.packages("lme4")
(fm1 <- lme4::lmer(Reaction ~ Days + (Days | Subject), lme4::sleepstudy))
summary(fm1)
AIC()
BIC()

#library(asreml) #payed package
?lm
?lr
