neptune_stop <- function(run, seconds=NULL){
  check_run(run)
  run$stop(seconds=seconds)
}