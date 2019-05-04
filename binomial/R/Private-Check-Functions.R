# 1.1) Private Checker Functions
# Function check_prob() to test if an input prob is a valid probability value
check_prob <- function(p){
  if (p>=0 & p<=1){
    return("TRUE")
  }else{
    stop("p has to be a number betwen 0 and 1")
  }
}


# Function check_trials() to test if an input trials is a valid value for number of trials
check_trials <- function(n){
  if (n>=0){
    return("TRUE")
  }else{
    stop('invalid trials value')
  }
}

# Function check_success() to test if an input success is a valid value for number of successes
check_success <- function(k, n){
  if (n>=0 & k>=0 & n>=k){
    return("TRUE")
  }else if (k>n) {
    stop('success cannot be greater than trials')
  }else{
    stop('invalid success value')
  }
}
