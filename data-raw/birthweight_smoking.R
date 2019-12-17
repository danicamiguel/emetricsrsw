library(usethis)
library(readxl)

bithweight_smoking <- read_excel("birthweight_smoking.xlsx")

usethis::use_data(bithweight_smoking, overwrite = TRUE)