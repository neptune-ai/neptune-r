neptune_track_files <- function(x, path, destination=NULL, wait=FALSE){
  check_handler(x)
  x$track_files(path=path, destination=destination, wait=wait)
}