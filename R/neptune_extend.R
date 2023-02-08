# TODO: docs
neptune_extend <-
  function(x, values, steps = NULL, timestamps = NULL, wait = FALSE, ...) {
    check_handler(x)
    values <- process_value(values, ...) # TODO: ???
    x$extend(
      values = values,
      steps = steps,
      timestamps = timestamps,
      wait = wait
    )
  }
