#' @title Cumulative Distribution
#' @description A table of the cumulative probability of all possible successes
#' @param trials numeric values. number of trials
#' @param prob numeric values. probability of success
#' @return Cumulative Distribution data frame
#' @examples
#'   bin_cumulative(trials = 5, prob = 0.5)
#' @export
bin_cumulative <- function(trials, prob){
  cumulative <- rep(0, (1+trials))
  cumulative[1]=bin_distribution(trials=trials, prob=prob)[1,2]
  for(pos in 2:length(cumulative)){
    cumulative[pos]=bin_distribution(trials=trials, prob=prob)[pos,2]+cumulative[pos-1]
  }
  a <- as.data.frame(cbind(bin_distribution(trials=trials, prob=prob),
                           cumulative=cumulative),
                     byrow=FALSE)
  class(a) <- append("bincum",class(a))
  return(a)
}

#' @export
plot.bincum <- function(df){
  plot(x=df[,1],y=df[,3],xlab = "Success",ylab = "probability")
  lines(x=df[,1],y=df[,3])
}

dis2 <- bin_cumulative(trials = 5, prob = 0.5)
plot.bincum(dis2)
