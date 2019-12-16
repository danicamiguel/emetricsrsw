## code to prepare `data-raw` dataset goes here
library(usethis)
library(readxl)
caschool <- read_excel("caschool.xlsx")

bithweight_smoking <- read_excel("birthweight_smoking.xlsx")

usethis::use_data(caschool, overwrite = TRUE)
usethis::use_data(bithweight_smoking, overwrite = TRUE)


