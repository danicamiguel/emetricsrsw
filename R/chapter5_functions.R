#chapter5_functions 
#Includes: 
#    stata_sum: returns summary results of specified dataset. 
#    stata_sum_var: returns summary results of a specified variable in a given dataset. 
#    stata_desc: returns detailed information of the dataset including the first 10 values of each of the columns.
#    stata_list: returns a given dataset in a table 
#    stata_list_2: the first two rows of a dataset in a table 
#    stata_list_10: returns the first ten rows of a dataset in a table. 
#    stata_graph: returns a scatterplot. 
#    stata_reg: returns the summary results of a fitted model.
#    stata_ci: returns the confidence interval of a fitted linear model. 

#' stata_sum 
#' 
#' Summary results of dataset. 
#' Produces result summaries of the various model fitting functions.  
#' 
#' @param dataset - list, dataset 
#' @return list containing the summary results of the passed argument.  
#' 
#' @examples 
#' stata_sum(caschool)
#' stata_sum(mtcars)
#' 
#' \dontrun{
#' stata_sum(caschool, mtcars)
#' }
#' 
#' @export
stata_sum <- function(dataset){
  return(summary(dataset, na.rm = TRUE))
}

#' stata_sum_var 
#' 
#' Summary results of a specified variable in a given dataset.  
#' Produces result summaries of the various model fitting functions.  
#' 
#' @param x - a numeric vector, variable from a datset 
#' @param dataset - list, dataset 
#' @return a vector of statistical summaries 
#' 
#' @examples 
#' stata_sum_var(caschool$teachers, caschool)
#' stata_sum_var(mtcars$cyl, mtcars)
#' 
#' \dontrun{
#' stata_sum_var(teachers, caschool)
#' }
#' 
#'@importFrom mosaic favstats
#'@export 
stata_sum_var <- function(x, dataset) {
  return(favstats(x, data = dataset))
}

#' stata_desc 
#' 
#' Gives a glimpse of the dataset. 
#' Provides detailed information of the dataset including the first 10 values of each of the columns.   
#' 
#' @param dataset - a data table 
#' @return list of the dataset attributes including every column of the dataset 
#'  
#' @examples 
#' stata_desc(caschool)
#' stata_desc(mtcars)
#' 
#' \dontrun{
#' stata_desc(caschool, mtcars)
#' }
#' 
#'@importFrom tibble glimpse  
#'@export 
stata_desc <- function(dataset) {
  return(glimpse(dataset))
}

#' stata_list 
#' 
#' View dataset 
#' Allows user to see all the observations of the dataset in a table.
#' 
#' @param dataset - an R object which can be coerced to a data frame
#' @return a given dataset in a table 
#'  
#' @examples 
#' stata_list(caschool)
#' stata_list(mtcars)
#' 
#' \dontrun{
#' stata_list(caschool, mtcars)
#' }
#' 
#'@importFrom utils head
#'@export 
stata_list <- function(dataset){
  dim <- dim(dataset)
  obs <- dim[1]
  return(head(dataset, obs))
}

#' stata_list_2 
#' 
#' View dataset 
#' Allows user to see a the first two rows of a given dataset.  
#' 
#' @param dataset - an R object which can be coerced to a data frame
#' @return the first two observations of a dataset in a table 
#'  
#' @examples 
#' stata_list_2(caschool)
#' stata_list_2(mtcars)
#' 
#' \dontrun{
#' stata_list_2(caschool, mtcars)
#' }
#' 
#'@importFrom utils head
#'@export
stata_list_2 <- function(dataset){
  return(head(dataset,2))
}

#' stata_list_10 
#' 
#' View dataset 
#' Allows user to see a the first ten rows of a given dataset in a new window.   
#' 
#' @param dataset - an R object which can be coerced to a data frame
#' @return returns the first ten rows of a dataset in a table. 
#'  
#' @examples 
#' stata_list_10(caschool)
#' stata_list_10(mtcars)
#' 
#' \dontrun{
#' stata_list_10(caschool, mtcars)
#' }
#' 
#'@importFrom utils head
#'@export
stata_list_10 <- function(dataset){
  return(head(dataset,10))
}

#' stata_graph 
#' 
#' Plots a scatterplot. 
#' 
#' @param dataset - an R object which can be coerced to a data frame
#' @param x - x varaible 
#' @param y - y varaible 
#' @return scatterplot 
#' 
#' @examples 
#' stata_graph(caschool$enrl_tot, caschool$teachers, caschool)
#' stata_graph(mtcars$cyl, mtcars$cyl, mtcars)

#' \dontrun{
#' stata_graph(enrl_tot, teachers, caschool)
#' } 
#' 
#' @importFrom ggplot2 ggplot
#' @importFrom ggplot2 aes
#' @importFrom ggplot2 geom_point
#' @export 
stata_graph <- function(x, y, dataset){
  return(ggplot(dataset, aes(x=x, y=y)) + geom_point())
}

#' stata_reg
#' 
#' Produces result summaries of a fitted model.
#' 
#' @param y - y variable 
#' @param x - x variale 
#' @return list of result summary of a fitted linear model 
#' 
#' @examples 
#' stata_reg(caschool$testscr, caschool$avginc)
#' stata_reg(mtcars$cyl, mtcars$mpg)
#' 
#' \dontrun{
#' stata_reg(testscr, avginc)
#' }
#' 
#' @importFrom stats lm 
#' @export  
stata_reg <- function(y, x){
  return(summary(lm(y~x))) 
}

#' stata_ci 
#' 
#' Finds the confidence interval of a fitted linear model. 
#' 
#' @param x - x variable 
#' @param y - y variable 
#' @return a matrix (or vector) with columns giving lower and upper confidence limits for each parameter
#' 
#' @examples 
#' stata_ci(caschool$testscr, caschool$avginc)
#' stata_ci(mtcars$cyl, mtcars$mpg)
#' 
#' \dontrun{
#' stata_ci(testscr, avginc)
#' }
#' 
#' @importFrom stats confint 
#' @importFrom stats lm 
#' @export 
stata_ci <- function(y,x) {
  return(confint(lm(y~x)))
}

 