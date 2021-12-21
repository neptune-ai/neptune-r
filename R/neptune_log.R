neptune_log <-
function(x, value, step=NULL) {
  check_handler(x)
  x$log(value, step=step)
}
