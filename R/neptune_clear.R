neptune_clear <- function(x, wait=FALSE){
  check_handler(x)
  x$clear(wait=wait)
}
