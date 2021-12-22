neptune_upload <-
function(x, value, wait=FALSE) {
  check_handler(x)
  x$upload(value, wait=wait)
}
