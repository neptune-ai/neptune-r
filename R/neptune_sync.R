neptune_sync <- function(run, wait = TRUE) {
  check_run(run)
  run$sync(wait=wait)
}