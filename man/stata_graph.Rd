% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/common_functions.R
\name{stata_graph}
\alias{stata_graph}
\title{stata_graph}
\usage{
stata_graph(x, y, dataset)
}
\arguments{
\item{x}{- x varaible}

\item{y}{- y varaible}
}
\value{
scatterplot
}
\description{
Plots a scatterplot.
}
\examples{
stata_graph(caschool$enrl_tot, caschool$teachers, caschool)
stata_graph(mtcars$cyl, mtcars$cyl, mtcars)
\dontrun{
stata_graph(enrl_tot, teachers, caschool)
} 

}