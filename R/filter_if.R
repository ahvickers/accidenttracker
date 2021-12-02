#' Return a result conditionally
#'
#' \code{filter_if()} returns a specified result if the condition is met, or TRUE otherwise
#'
#' This function is used to reactively filter a dataframe with \code{dplyr::filter()}.
#' If the condition is met, the filtering condition specified in \code{success} will be returned,
#' filtering the dataframe. If the condition is not met, it will return TRUE.
#' Because \code{filter()} accepts any row that returns TRUE, this returns the unfiltered dataframe.
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
