neptune_wait <- function(run){
  check_run(run)
  run$wait()
}