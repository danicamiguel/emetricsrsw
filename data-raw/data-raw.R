## code to prepare `data-raw` dataset goes here
library(usethis)
library(readxl)
caschool <- read_excel("caschool.xlsx")
usethis::use_data(caschool, overwrite = TRUE)


