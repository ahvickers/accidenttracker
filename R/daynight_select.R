#' Create a widget that allows you to select whether to filter data by day/night
#'
#' @return A select input widget that filters accidents by whether it occurred in the day or night
#' @export

daynight_select <- function() {
  select_input(inputId = "sunrise",
               label = "Day/Night:",
               choices = select_options(
                 df = accidents,
                 col = day.night,
                 all = TRUE),
               type = "select")
}
