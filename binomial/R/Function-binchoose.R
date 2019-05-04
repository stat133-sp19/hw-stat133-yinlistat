#' @title Combinations
#' @description calculate the number of combinations in which k successes can occur in n trials
#' @param n numeric values. number of trials
#' @param k numeric values. number of success
#' @return number of combinations
#' @examples
#'   bin_choose(n = 5, k = 2)
#'   bin_choose(5, 0)
#'   bin_choose(5, 1:3)
#' @export
bin_choose <- function (n,k){
  if (k>n){
    stop("k cannot be greater than n")
  }else{
    combinations = factorial(n) / (factorial(k) * factorial(n-k))
    return(combinations)
  }
}
