.onLoad <-
  function(libname, pkgname) {
    reticulate::configure_environment(pkgname)

    # This will fail before Neptune is installed
    try(
      {
        ANONYMOUS_API_TOKEN <<- get_neptune()["ANONYMOUS_API_TOKEN"]
      },
      silent = TRUE
    )
  }
