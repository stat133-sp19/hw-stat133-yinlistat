% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Function-bindistribution.R
\name{bin_distribution}
\alias{bin_distribution}
\title{Distribution}
\usage{
bin_distribution(trials, prob)
}
\arguments{
\item{trials}{numeric values. number of trials}

\item{prob}{numeric values. probability of success}
}
\value{
Distribution data frame
}
\description{
A table of the probability of all possible successes
}
\examples{
  bin_distribution(trials = 5, prob = 0.5)
}
