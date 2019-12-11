library(tidyverse)
library(dplyr)
library(mosaic)
library(ggplot2)

sum <- function(dataset){
  return(summary(dataset, na.rm = TRUE))
}

sum_var <- function(x, dataset) {
  return(favstats(x, data = data))
}

describe <- function(dataset) {
  return(str(dataset))
}

list <- function(dataset){
  return(View(dataset))
}

list_2 <- function(dataset){
  return(View(head(dataset,2)))
}

list_10 <- function(dataset){
  return(View(head(dataset,10)))
}

graph <- function(variable1,variable2, dataset){
  return(ggplot(dataset, aes(x=variable2, y=variable1)) + geom_point())
}

reg <- function(x, y, dataset){
  return(lm(y ~ x, data = dataset, na.rm = TRUE))
}

