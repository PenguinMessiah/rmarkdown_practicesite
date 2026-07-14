# Libraries that allow us to read excel files (important ones being tidyverse and readxl)
library(tidyverse)
library(readxl)
library(dplyr)
library(readxl)

# Assigning a variable to the excel sheet, settin specific parameters to ensure only the information I want is used for future
# data analysis
df <- read_excel("Holistic Data Set.xlsx")

missing <- complete.cases(df)
df[missing, ]


