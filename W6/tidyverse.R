library(tidyverse)
#using tidyverse
dt <- as_tibble(df)
dt
first(dt)
last(dt)
first(dt)[1]
last(dt)[1]
#using tidyverse
dt <- tidyr::separate(dt, alleles, into = c("A1", "A2"), sep = "/")
