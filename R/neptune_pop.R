neptune_pop <- function(run, path, wait=TRUE) {
  check_run(run)
  run$pop(path=path, wait=wait)
}