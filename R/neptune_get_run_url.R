neptune_get_run_url <- function(run) {
  check_run(run)
  run$get_run_url()
}