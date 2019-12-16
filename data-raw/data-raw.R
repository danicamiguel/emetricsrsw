## code to prepare `data-raw` dataset goes here

usethis::use_data("data-raw")

library(tidyverse)
library(dplyr)
library(readxl)

caschool <- read_excel("caschool.xlsx")
