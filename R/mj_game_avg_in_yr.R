#' Michael Jordan Average in Year
#'
#' This function allows you to find the average points Michael Jordan scored per game in any given NBA season.
#' @param yr Enter the season.
#' @keywords Michael Jordan average points
#' @export
#' @examples mj_game_avg_in_yr(1995)
#' mj_game_avg_in_yr()

mj_game_avg_in_yr <- function(yr){
  
  mj_avg_pts_in_year <- nba %>%
    dplyr::select('Year', 'Player', 'PTS', 'G') %>%
    dplyr::filter(Year==yr, Player == 'Michael Jordan*') %>%
    dplyr::group_by(Year, Player) %>%
    dplyr::summarise(Avg_Pts = sum(PTS)/G)
  
  return(mj_avg_pts_in_year)
}