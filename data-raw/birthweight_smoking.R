library(usethis)
library(readxl)

birthweight_smoking <- read_excel("birthweight_smoking.xlsx")

usethis::use_data(birthweight_smoking, overwrite = TRUE)