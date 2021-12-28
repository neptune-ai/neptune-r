neptune_assign <-
function(x, value, wait=FALSE) {
  check_handler_or_run(x)
  x$assign(value=value, wait=wait)
}
