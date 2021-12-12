neptune_download <-
function(x, path) {
  check_handler(x)
  x$download(path)
}
