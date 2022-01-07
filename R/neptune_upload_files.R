neptune_upload_files <- function(x, globs, wait=FALSE){
  check_handler(x)
  x$upload_files(globs=globs, wait=wait)
}