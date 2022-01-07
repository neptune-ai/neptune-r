neptune_wait <- function(run, disk_only=FALSE){
  check_run(run)
  run$wait(disk_only=disk_only)
}