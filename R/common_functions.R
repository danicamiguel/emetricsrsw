library(tidyverse)
library(dplyr)
library(tibble)
library(mosaic)
library(ggplot2)

stata_sum <- function(dataset){
  return(summary(dataset, na.rm = TRUE))
}

stata_sum_var <- function(x, dataset) {
  return(favstats(x, data = data))
}

stata_desc <- function(dataset) {
  return(glimpse(dataset))
}

stata_list <- function(dataset){
  return(View(dataset))
}

stata_list_2 <- function(dataset){
  return(View(head(dataset,2)))
}

stata_list_10 <- function(dataset){
  return(View(head(dataset,10)))
}

stata_graph <- function(variable1,variable2, dataset){
  return(ggplot(dataset, aes(x=variable2, y=variable1)) + geom_point())
}

stata_reg <- function(y, x, data){
  fit <- lm(y~x, data = data)
  return(fit)
}
