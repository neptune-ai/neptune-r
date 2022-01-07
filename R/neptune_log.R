neptune_log <-
function(x, value, step=NULL, timestamp=NULL, wait=FALSE, ...) {
  check_handler(x)
  value <- process_value(value, ...)
  x$log(value=value, step=step, timestamp=timestamp, wait=wait)
}
