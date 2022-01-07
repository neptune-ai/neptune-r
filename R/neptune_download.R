neptune_download <-
function(x, destination=NULL) {
  check_handler(x)
  x$download(destination=destination)
}
