is_run <- function(x) {
  "neptune.new.metadata_containers.run.Run" %in% class(x)
}

is_handler <- function(x) {
  "neptune.new.handler.Handler" %in% class(x)
}

check_run <-
  function(x) {
    if (!is_run(x)) {
      stop("run must be a neptune Run")
    }
  }

check_handler <-
  function(x) {
    if (!is_handler(x)) {
      stop("x must be a neptune Handler")
    }
  }

check_handler_or_run <-
  function(x) {
    if (!is_run(x) && !is_handler(x)) {
      stop("x must be a neptune Run or Handler")
    }
  }
