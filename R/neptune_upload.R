neptune_upload <-
function(x, value, wait=FALSE) {
  check_handler(x)
  if ("ggplot" %in% class(value)) {
    value <- neptune_file_as_image(value)
  }
  if ("plotly" %in% class(value)) {
    value <- neptune_file_as_html(value)
  }
  x$upload(value, wait=wait)
}
