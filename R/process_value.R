process_value <- function(x, ...) {
  if ("ggplot" %in% class(value)) {
    value <- neptune_file_as_image(value, ...)
  }
  if ("plotly" %in% class(value)) {
    value <- neptune_file_as_html(value, ...)
  }
  value
}