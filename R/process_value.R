process_value <- function(x, ...) {
  if ("ggplot" %in% class(x)) {
    x <- neptune_file_as_image(x, ...)
  }
  if ("plotly" %in% class(x)) {
    x <- neptune_file_as_html(x, ...)
  }
  x
}