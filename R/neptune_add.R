neptune_add <-
function(x, values, wait=FALSE) {
  check_handler(x)
  x$add(values=values, wait=wait)
}
