#' Filter only if a condition is met
#'
#' @param condition A conditional statement
#' @param success The result if the conditional statement returns TRUE
#'
#' @return The success parameter if the condition is met, or TRUE if not
#' @export
#'
#' @examples
#' # Condition returns TRUE, filters successfully
#' x <- 5
#' df <- accidents %>%
#' dplyr::filter(filter_if(x == 5, day.night == "night"))
#'
#' # Condition returns FALSE, filter() sees TRUE, so does not filter dataframe
#' x <- 3
#' df <- accidents %>%
#' dplyr::filter(filter_if(x == 5, day.night == "night"))
#'

filter_if <- function(condition, success) {
  if (condition) {
    success
  } else {
    TRUE
  }
}
