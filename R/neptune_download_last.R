neptune_download_last <- function(x, destination=NULL){
  check_handler(x)
  x$download_last(destination=destination)
}
