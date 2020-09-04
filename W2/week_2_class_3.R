# the three types of homogeneous types of data structure: vector, matrix, array


#vector 
a <- c("a", "b", "c")
b <- seq(from = 0, to = 10, by = 2)
c <- 32:45

#matrix
rbind(c, c)
cbind(c, c)


x <- 1:3
y <- 10:12
cbind(x, y)

d <- matrix(nrow = 2, ncol = 3)
e <- matrix(c(1, 2, 3, 4), nrow = 2, ncol = 2, byrow = T)
m <- 1:10
dim(m) <- c(2, 5)

array()

A = array(
  c(1, 2, 3, 4, 5, 6, 7, 8),
  dim = c(2, 2, 2)
)

m1 <- matrix(1:10, 2, 5)
m2 <- m1
m1 + m2

m1/m2
m1*m2
m1%*%t(m2) #had to transpose because they are 2x5 and 5x2


sqrt(m1)
solve(m1)
ginv(m1) #uses package MASS

rbind(m1, m2)

c(c(1, 2, 3), 4)
