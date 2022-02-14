#' Correlation Matrix of NBA Stats Numerical Variables for a Given Year
#'
#' This function allows you to find the correlation matrix of the numerical variables in the Kaggle Season_Stats_NBA.csv dataset (found at https://www.kaggle.com/drgilermo/nba-players-stats/data) for any given NBA season.
#' @param yr Enter the season.
#' @keywords Correlation Matrix NBA
#' @export
#' @examples cor_nba_vars(2001)
#' cor_nba_vars()

cor_nba_vars <- function(yr){
  
  nba_cor <- nba %>%
    purrr::keep(is.numeric) %>%
    dplyr::filter(Year== yr) %>%
    stats::cor()
  
  return(nba_cor)
}