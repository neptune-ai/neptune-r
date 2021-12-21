neptune_assign <-
function(x, value, wait=FALSE) {
  check_handler(x)
  x$assign(value, wait=wait)
}
