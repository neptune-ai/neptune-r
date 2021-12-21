get_neptune <- function() {
  npt <- options("neptune")
  if (is.null(npt$neptune)) {
    tryCatch({
      neptune <- reticulate::import("neptune.new")
    }, error = function(e) {
      message("couldn't import neptune client. Trying to install")
      neptune_install()
      neptune <- reticulate::import("neptune.new")
    })
    options(neptune = neptune)
  }
  
  npt <- options("neptune")$neptune
  return(npt)
}