neptune_file_as_image <-
  function(x, ...) {
    if ("ggplot" %in% class(x)) {
      pth <- paste0(tempfile(), '.png')
      ggplot2::ggsave(
        x,
        filename = pth,
        ...
      )
      file_ <-
        reticulate::import("neptune.new.types")$File(path = pth)
      return(file_)
    }
    reticulate::import("neptune.new.types")$File$as_image(x)
  }
