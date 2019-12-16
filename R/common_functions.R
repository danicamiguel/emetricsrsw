#chapter5_functions 
#Includes: 
#    stata_sum: 
#    stata_sum_var:
#    stata_desc: 
#    stata_list: 
#    stata_list_2:
#    stata_list_10:
#    stata_graph:
#    stata_reg:
#    stata_regcoeff:
#    stata_logit:
#    stata_ci: 

#' stata_sum 
#' 
#' Summary results of dataset. 
#' Produces result summaries of the various model fitting functions.  
#' 
#' @param dataset - List
#' @return List containing the summary results of the passed argument.  
#' 
#' @examples 
#' stata_sum(caschool)
#' stata_sum(mtcars)
#' 
#' \dontrun{
#' stata_sum(caschool, mtcars)
#' }
stata_sum <- function(dataset){
  return(summary(dataset, na.rm = TRUE))
}

#'@import mosaic 
stata_sum_var <- function(x, dataset) {
  return(favstats(x, data = data))
}

#'@import tibble
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

#' @import ggplot2
stata_graph <- function(variable1,variable2, dataset){
  return(ggplot(dataset, aes(x=variable2, y=variable1)) + geom_point())
}
#' @import stats 
stata_reg <- function(y, x){
  return(lm(y~x))
}

#' @import stats 
stata_regcoeff <- function(y,x) {
  return(summary(lm(y~x))$coefficients)
}

#' @import stats 
stata_logit <- function(y,x) {
  return(glm(y~x))
}

#' @import stats 
stata_ci <- function(y,x) {
  return(confint(lm(y~x)))
}

 