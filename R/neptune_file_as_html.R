neptune_file_as_html <-
  function(x) {
    if ("ggplot" %in% class(x)) {
      pth <- paste0(tempfile(), '.html')
      htmlwidgets::saveWidget(as_widget(ggplotly(x)),
                              selfcontained = TRUE,
                              file = pth)
      file_ <-
        reticulate::import("neptune.new.types")$File(path = pth)
      return(file_)
    }
    if ("plotly" %in% class(x)) {
      pth <- paste0(tempfile(), '.html')
      htmlwidgets::saveWidget(as_widget(x),
                              selfcontained = TRUE,
                              file = pth)
      file_ <-
        reticulate::import("neptune.new.types")$File(path = pth)
      return(file_)
    }
    reticulate::import("neptune.new.types")$File$as_html(x)
  }
