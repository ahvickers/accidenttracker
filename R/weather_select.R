#' Create a widget that selects whether to filter data by weather type
#'
#' @return A selector widget that filters accidents based on the category of weather
#' @export

weather_select <- function() {
  select_input(inputId = "weather",
               label = "Weather:",
               choices = select_options(
                 df = accidents,
                 col = wthr.cat),
               type = "multiple")
}
