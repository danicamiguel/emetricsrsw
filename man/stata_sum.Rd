% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/chapter5_functions.R
\name{stata_sum}
\alias{stata_sum}
\title{stata_sum}
\usage{
stata_sum(dataset)
}
\arguments{
\item{dataset}{\itemize{
\item list, dataset
}}
}
\value{
list containing the summary results of the passed argument.
}
\description{
Summary results of dataset.
Produces result summaries of the various model fitting functions.
}
\examples{
stata_sum(caschool)
stata_sum(mtcars)

\dontrun{
stata_sum(caschool, mtcars)
}

}
