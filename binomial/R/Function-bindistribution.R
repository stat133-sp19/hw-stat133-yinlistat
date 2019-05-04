#' @title Distribution
#' @description A table of the probability of all possible successes
#' @param trials numeric values. number of trials
#' @param prob numeric values. probability of success
#' @return Distribution data frame
#' @examples
#'   bin_distribution(trials = 5, prob = 0.5)
#' @export
bin_distribution <- function(trials, prob){
  success=seq(0,trials,by=1)
  tbl <- bin_probability(success=success, trials = trials, prob = prob)
  a <- as.data.frame(cbind(
    success = seq(0,trials, by=1),
    probability = tbl
  ), byrow=FALSE)
  class(a) <- append("bindis",class(a))
  return(a)
}

#' @export
plot.bindis <- function(df){
  barplot(height = df[,2],width = 1,xlab = "Success",ylab = "probability",
          names.arg=df[,1])
}

dis1 <- bin_distribution(trials = 5, prob = 0.5)
plot.bindis(dis1)
