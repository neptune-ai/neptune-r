neptune_exists <- function(run, path) {
  check_run(run)
  run$exists(path=path)
}