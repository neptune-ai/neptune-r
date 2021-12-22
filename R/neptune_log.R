neptune_log <-
function(x, value, step=NULL) {
  check_handler(x)
  if ("ggplot" %in% class(value)) {
    value <- neptune_file_as_image(value)
  }
  if ("plotly" %in% class(value)) {
    value <- neptune_file_as_html(value)
  }
  x$log(value, step=step)
}
