#2nd Function:

#' Oldest NBA Player Per Year
#'
#' This function allows you to find the oldest NBA player in a given season.
#' @param yr Enter the season.
#' @keywords Oldest NBA player
#' @export
#' @examples oldest_player_per_yr(2015)
#' oldest_player_per_yr()

oldest_player_per_yr <- function(yr){
  
  oldest_player <- nba %>%
    dplyr::select('Year', 'Player', 'Age') %>%
    dplyr::arrange(Year, desc(Age), Player) %>%
    dplyr::filter(Year== yr) %>%
    head(1)
  
  return(oldest_player)
}