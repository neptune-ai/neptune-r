.onLoad <-
  function(libname, pkgname) {
    reticulate::configure_environment(pkgname)

    # This will fail before Neptune is installed
    tryCatch(
      {
        ANONYMOUS_API_TOKEN <<- get_neptune()["ANONYMOUS_API_TOKEN"]
      },
      error = function(e) {
        warning(
          "ANONYMOUS_API_TOKEN was not initialized because Neptune client appears not to be installed"
        )
      }
    )
  }
