# Basic use of ggplot
library(tidyverse)
library(ggplot2)
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy))

# Template for future use of ggplot2 (replace brackets <> with dataset, geom function, collection of or mappings)
# ggplot (data = <DATA>) +
  # <GEOM_FUNCTION>(mapping= aes(<MAPPINGS>))


