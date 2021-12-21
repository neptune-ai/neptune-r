neptune_upload <-
function(x, value) {
  check_handler(x)
  x$upload(value)
}
