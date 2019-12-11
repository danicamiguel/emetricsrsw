library(tidyverse)
library(dplyr)
library(mosaic)
library(ggplot2)


sum <- function(dataset){
  return(summary(dataset, na.rm = TRUE))
}

<<<<<<< HEAD
sum_var <- function(x) {
  return(favstats(x, na.rm = TRUE))
=======
sum_var <- function(x, dataset) {
  return(favstats(x, data = data))
>>>>>>> cc53220e251077df4df0b699f9233f58fc85f81a
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

reg <- function(y, x, data){
  fit <- lm(y~x, data = data)
  return(fit)
}