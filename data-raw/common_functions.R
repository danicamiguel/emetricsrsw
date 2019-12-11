library(tidyverse)
library(dplyr)
library(mosaic)
library(ggplot2)

#data("mtcars")

sum <- function(variable, dataset) {
  return(favstats(variable, data = dataset))
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

reg <- function(rg){
  rg <- lm(y~x, data = data)
  return(rg)
}

