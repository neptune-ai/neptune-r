neptune_remove <-
function(x, values, wait=FALSE) {
  check_handler(x)
  x$remove(values, wait=wait)
}
