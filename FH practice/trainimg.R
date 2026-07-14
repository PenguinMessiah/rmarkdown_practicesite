library(tidyverse)
view(starwars)

 starwars %>% 
  # Apply function filter that applies to rows
  filter(height > 150 & mass < 200) %>% 
  # Mutate means to change which can be creating a new variable or overwriting an existing variable
  # In this case, mutate is overwriting the height (cm) to transform it into meters!
  mutate(height_in_meters = height/100) %>% 
  select(height_in_meters, mass) %>% 
  # Arrange arranges the data by whatever you choose (if you add a - it'll be smallest to biggest)
  arrange(mass) %>% 
  # view()
  # plot()
  
# Data structure and types of variables

view(msleep)
# Glimpse is a quick overview of data
glimpse(msleep)
# Head is the first six rows
head(msleep)
# Tells you what kind of variable something is
class(msleep$name)
# Length the amount of variables in a data set 
length(msleep)
# Length$variable tells you how many observations in that particular variable
length(msleep$name)
# Names gives you the name of EVERY variable in the data sheet OUUU SHIT
names(msleep)
# Unique tells you the unique categories of a specific factor
unique(msleep$genus)

#complete.cases gives you rows of data without any missing/NA values, however an ! instead shows you all rows WITH missing values
missing <- !complete.cases(msleep)
msleep[missing, ]

# Changing variable order

starwars %>% 
  select(name, mass, height, everything()) %>% 
  view()
# Changing Variable name 
starwars %>% 
  rename("characters" = "name") %>% 
  head()

# Changing Variable type

class(starwars$hair_color)
# This is done with the function .as
starwars$hair_color <- as.factor(starwars$hair_color)
class(starwars$hair_color)

mutate(hair_color = as.character(starwars$hair_color)) %>% 
  glimpse()

# Changing factor levels

ggplot(starwars)





