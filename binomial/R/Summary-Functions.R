# Main Functions
# Summary Mean
bin_mean <- function(trials, prob){
  check_trials(trials)
  check_prob(prob)
  m <- aux_mean(n=trials, p=prob)
  return(m)
}

bin_mean(10, 0.3)

# Summary Variance
bin_variance <- function(trials, prob){
  check_trials(trials)
  check_prob(prob)
  v <- aux_variance(n=trials, p=prob)
  return(v)
}

bin_variance(10, 0.3)

# Summary Mode
bin_mode <- function(trials, prob){
  check_trials(trials)
  check_prob(prob)
  m <- aux_mode(n=trials, p=prob)
  return(m)
}

bin_mode(10, 0.3)

# Summary Skewness
bin_skewness <- function(trials, prob){
  check_trials(trials)
  check_prob(prob)
  s <- aux_skewness(n=trials, p=prob)
  return(s)
}

bin_skewness(10, 0.3)

# Summary Kurtosis
bin_kurtosis <- function(trials, prob){
  check_trials(trials)
  check_prob(prob)
  k <- aux_kurtosis(n=trials, p=prob)
  return(k)
}

bin_kurtosis(10, 0.3)
