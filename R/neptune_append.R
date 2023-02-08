neptune_append <-
  function(x, value, step = NULL, timestamp = NULL, wait = FALSE, ...) {
    check_handler(x)
    value <- process_value(value, ...)
    x$append(value = value, step = step, timestamp = timestamp, wait = wait)
  }

neptune_log <- neptune_append
