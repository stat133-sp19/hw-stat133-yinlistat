# 1.2) Private Auxiliary Functions
# auxiliary functions Mean
aux_mean <- function(n,p){
  mean = n*p
  return(mean)
}

# auxiliary functions Variance
aux_variance <- function(n,p){
  variance = n*p*(1-p)
  return(variance)
}

# auxiliary functions Mode
aux_mode <- function(n,p){
  m = n*p+p
  test <- all.equal(m, as.integer(m), check.attributes = FALSE)
  if(test==TRUE){
    return(m)
    return(m-1)
  }else{
    return(as.integer(m))
  }
}

# auxiliary functions Skewness
aux_skewness <- function(n,p){
  skewness = (1-2*p) / ((n*p*(1-p))^(1/2))
  return(skewness)
}

# auxiliary functions Kurtosis
aux_kurtosis <- function(n,p){
  kurtosis = (1-6*p*(1-p))/(n*p*(1-p))
  return(kurtosis)
}
