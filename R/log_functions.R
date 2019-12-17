#log_functions.R 
#Includes: 
#   stata_logit: returns the summary results of a fitted logistic model. 

#' stata_logit 
#' 
#' Produces summary results of a fitted logistic model 
#' 
#' @param x - x variable 
#' @param y - y variable 
#' @return list of the result summary of a fitted logistic model 
#' 
#' @examples
#' stata_logit(birthweight_smoking$alcohol, birthweight_smoking$birthweight)
#' stata_logit(birthweight_smoking$alcohol, birthweight_smoking$educ)
#' 
#' \dontrun{
#' stata_logit(alcohol, birthweight)
#' stata_logit(alcohol, educ)
#' }
#' 
#' @importFrom stats glm
#' @importFrom stats family 
#' @importFrom stats binomial
#' @export 
stata_logit <- function(y,x) {
  return(summary((glm(y~x, family = binomial))))
}
