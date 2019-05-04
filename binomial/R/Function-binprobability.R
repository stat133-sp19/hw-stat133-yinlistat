#' @title Probability
#' @description calculate the probability in which k successes of probability p can occur in n trials
#' @param trials numeric values. number of trials
#' @param success numeric values. number of success
#' @param prob numeric values. probability of success
#' @return probability
#' @examples
#'   bin_probability(success = 2, trials = 5, prob = 0.5)
#'   bin_probability(success = 0:2, trials = 5, prob = 0.5)
#'   bin_probability(success = 55, trials = 100, prob = 0.45)
#' @export
bin_probability <- function(success=(0:trials), trials, prob){
   if(check_prob(prob)==TRUE& check_trials(trials)==TRUE&check_success(k=success,n=trials)==TRUE){
   pr = (bin_choose(n=trials,k=success))*(prob^success)*((1-prob)^(trials-success))
   return(pr)
}else{
   stop('invalid input value')
}
}
