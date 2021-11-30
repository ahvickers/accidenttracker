#' Create a widget that selects whether to filter by hour
#'
#' @return A selector widget that filters accidents by hour they occurred
#' @export

hour_select <- function() {
  select_input(inputId = "hour",
               label = "Hour (24-hour system):",
               choices = select_options(
                 df = accidents,
                 col = hour),
               type = "multiple")
}
