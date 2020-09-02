install.packages("swirl")
library("swirl")

swirl()

install.packages("devtools")
devtools::install_github("swirldev/swirl", ref = "dev")

install.packages('rmarkdown')
install.packages('tinytex')
tinytex::install_tinytex()

library(sos)
???lm  

vignette('simplePHENOTYPES')
