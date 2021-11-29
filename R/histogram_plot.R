
histogram_plot <- function(x, y){
  if(x == "state" | x == "day.night"){
    ggplot(us_accidents, aes_string(x)) +
      geom_bar(width=1)
  }
  else{
    ggplot(us_accidents, aes_string(x)) +
      geom_histogram(binwidth=y)
  }
}