library(tidyverse)

starwars$sex <- as.factor(starwars$sex)
levels(starwars$sex)

starwars<- %>% 
  mutate(sex = factor(sex,
                      levels = c("male", "female", "hermaphroditic", "none"
                                 )))

