% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Function-binprobability.R
\name{bin_probability}
\alias{bin_probability}
\title{Probability}
\usage{
bin_probability(success = (0:trials), trials, prob)
}
\arguments{
\item{success}{numeric values. number of success}

\item{trials}{numeric values. number of trials}

\item{prob}{numeric values. probability of success}
}
\value{
probability
}
\description{
calculate the probability in which k successes of probability p can occur in n trials
}
\examples{
  bin_probability(success = 2, trials = 5, prob = 0.5)
  bin_probability(success = 0:2, trials = 5, prob = 0.5)
  bin_probability(success = 55, trials = 100, prob = 0.45)
}
