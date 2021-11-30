#' Create a widget that select whether to filter by month
#'
#' @return A selector widget that filters accidents by month they occurred
#' @export

month_select <- function() {
  select_input(inputId = "month",
               label = "Month:",
               choices = select_options(
                 df = accidents,
                 col = month),
               type = "multiple")
}
