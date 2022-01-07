neptune_upload <-
function(x, value, wait=FALSE, ...) {
  check_handler(x)
  value <- process_value(value, ...)
  x$upload(value=value, wait=wait)
}
