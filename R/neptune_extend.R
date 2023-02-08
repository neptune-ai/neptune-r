neptune_extend <-
  function(x, values, steps = NULL, timestamps = NULL, wait = FALSE, ...) {
    check_handler(x)
    values <- sapply(values, function(value) process_value(value, ...))
    x$extend(
      values = values,
      steps = steps,
      timestamps = timestamps,
      wait = wait
    )
  }
