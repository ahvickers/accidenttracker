#' Create a widget that selects which parameter to color markers by
#'
#' @return A select input widget with the options to color by different variables
#' @export

color_select <- function() {
  select_input(inputId = "color",
               label = "Color the Data by:",
               choices = c("None",
                           "Severity",
                           "Temperature (F)",
                           "Precipitation",
                           "Visibility",
                           "Day/Night"),
               type = "select")
}
