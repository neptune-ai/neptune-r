neptune_init <-
function (project=NULL,
            api_token = NULL,
            run = NULL,
            python = NULL,
            python_path,
            source_files = NULL,
            connection_mode = "async"){
    if (!(connection_mode %in% c("async", "sync", "offline", "debug"))) {
      stop('connection_mode must be one of "async", "sync", "offline", "debug"')
    }
    if (is.null(source_files) & !interactive()) {
      source_files <- c(this.path::this.path())
    }
    requireNamespace("reticulate", quietly = TRUE)
    if (!isNamespaceLoaded("reticulate"))
      stop("couldn't load reticulate package")
    if (!is.null(python)) {
      switch(
        python,
        python = reticulate::use_python(python = python_path,
                                        required = TRUE),
        conda = reticulate::use_condaenv(condaenv = python_path,
                                         required = TRUE),
        miniconda = reticulate::use_miniconda(condaenv = python_path,
                                              required = TRUE),
        venv = reticulate::use_virtualenv(virtualenv = python_path,
                                          required = TRUE),
        stop(
          "Invalid python argument, should be one of [python, conda, miniconda, venv]"
        )
      )
    }
    neptune <- get_neptune()

    run <- suppressWarnings(reticulate::py_suppress_warnings(
      neptune$init(
        project = project,
        api_token = api_token,
        run = run,
        mode = connection_mode,
        source_files = source_files
      )
    ))
    on.exit(tryCatch({
      #run$stop()
    }, error = function(e) {
      warning(paste0("Failed to stop neptune experiment: ", as.character(e)))
    }))
    return(run)
  }
