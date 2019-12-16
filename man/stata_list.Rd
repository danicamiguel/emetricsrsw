% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/common_functions.R
\name{stata_list}
\alias{stata_list}
\title{stata_list}
\usage{
stata_list(dataset)
}
\arguments{
\item{dataset}{- an R object which can be coerced to a data frame}
}
\value{
a new window containing the dataset
}
\description{
View dataset 
Allows user to see a given dataset in a new window.
}
\examples{
stata_list(caschool)
stata_list(mtcars)

\dontrun{
stata_list(caschool, mtcars)
}

}