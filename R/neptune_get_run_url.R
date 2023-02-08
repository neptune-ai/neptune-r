# TODO: docs
neptune_get_url <- function(run) {
  check_run(run)
  run$get_url()
}

neptune_get_run_url <- neptune_get_url
