neptune_fetch_values <- function(x, include_timestamp=TRUE){
  check_handler(x)
  x$fetch_values(include_timestamp=include_timestamp)
}
