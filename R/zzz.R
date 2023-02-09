.onLoad <-
  function(libname, pkgname) {
    reticulate::configure_environment(pkgname)
    ANONYMOUS_API_TOKEN <<- get_neptune()["ANONYMOUS_API_TOKEN"]
  }
