#' @title Binomial Random Variable
#' @description A table of the cumulative probability of all possible successes
#' @param trials numeric values. number of trials
#' @param prob numeric values. probability of success
#' @return Return an object of class "binvar"
#' @examples
#'   bin_variable(trials = 10, prob = 0.3)
#' @export

bin_variable <- function(trials, prob){
  check_trials(n=trials)
  check_prob(p=prob)
  a <- list("number of tirals"=trials,
         "prob of success"=prob)
  return(a)
}

print.binvar <- function(bin_variable){
   a <- list(
     "Binomial variable",
     Parameters = bin_variable
)
 return(a)
}



#' @export
summary.binvar <- function(bin_variable){
  x = bin_variable$Parameters$`number of tirals`
  y = bin_variable$Parameters$`prob of success`
  mean1=aux_mean(n=x,p=y)
  variance1=aux_variance(n=x,p=y)
  mode1=aux_mode(n=x,p=y)
  skewness1=aux_skewness(n=x,p=y)
  kurtosis1=aux_kurtosis(n=x,p=y)

  a <- list(
    "Summary variable",
    Parameters = bin_variable,
    Measures = list(mean=aux_mean(n=x,p=y),
                    variance=variance1,
                    mode=mode1,
                    skewness=skewness1,
                    kurtosis=kurtosis1)
  )
  return(a)
}

summary.binvar <- function(bin_variable){
  x = bin_variable$`number of tirals`
  y = bin_variable$`prob of success`
  mean1=aux_mean(n=x,p=y)
  variance1=aux_variance(n=x,p=y)
  mode1=aux_mode(n=x,p=y)
  skewness1=aux_skewness(n=x,p=y)
  kurtosis1=aux_kurtosis(n=x,p=y)

  a <- list(
    "Summary variable",
    Parameters = bin_variable,
    Measures = list(mean=aux_mean(n=x,p=y),
                    variance=variance1,
                    mode=mode1,
                    skewness=skewness1,
                    kurtosis=kurtosis1)
  )
  return(a)
}

bin1 <- bin_variable(trials=10, prob=0.3)
bin1
print.binvar(bin1)
summary.binvar(bin1)
