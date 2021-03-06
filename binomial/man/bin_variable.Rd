% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Function-binvariable.R
\name{bin_variable}
\alias{bin_variable}
\title{Binomial Random Variable}
\usage{
bin_variable(trials, prob)
}
\arguments{
\item{trials}{numeric values. number of trials}

\item{prob}{numeric values. probability of success}
}
\value{
Return an object of class "binvar"
}
\description{
A table of the cumulative probability of all possible successes
}
\examples{
  bin_variable(trials = 10, prob = 0.3)
}
