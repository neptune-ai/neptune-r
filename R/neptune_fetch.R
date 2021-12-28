neptune_fetch <-
function(x) {
  check_handler_or_run(x)
  x$fetch()
}
