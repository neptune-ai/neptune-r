neptune_capture_console_output <- function() {
  assign('print', function (x, ...) {
    rp <- selectMethod("print", class(x))
    ret <- capture.output(rp(x, ...))
    p <- reticulate::py_eval("print")
    p(paste0(ret, collapse = '\n'))
    reticulate::py$sys$stdout$flush()
  }, envir = globalenv())
}