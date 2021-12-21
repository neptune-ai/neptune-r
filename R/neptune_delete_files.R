neptune_delete_files <- function(x, paths, wait=FALSE){
  check_handler(x)
  x$delete_files(paths=paths, wait=wait)
}