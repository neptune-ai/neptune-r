neptune_init <-
  function (project = NULL,
            api_token = NULL,
            run = NULL,
            python = NULL,
            python_path,
            source_files = NULL,
            mode = "async",
            custom_run_id = NULL,
            name = NULL,
            description = NULL,
            tags = NULL,
            capture_stdout = TRUE,
            capture_stderr = TRUE,
            capture_hardware_metrics = TRUE,
            capture_traceback = TRUE,
            monitoring_namespace = NULL,
            fail_on_exception = TRUE,
            flush_period = 5,
            proxies = NULL) {
    if (!(mode %in% c("async", "sync", "offline", "debug", "read-only"))) {
      stop('mode must be one of "async", "sync", "offline", "debug", "read-only"')
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
        source_files = source_files,
        mode = mode,
        custom_run_id = custom_run_id,
        name = name,
        description = description,
        tags = tags,
        capture_stdout = capture_stdout,
        capture_stderr = capture_stderr,
        capture_hardware_metrics = capture_hardware_metrics,
        capture_traceback = capture_traceback,
        monitoring_namespace = monitoring_namespace,
        fail_on_exception = fail_on_exception,
        flush_period = flush_period,
        proxies = proxies
      )
    ))
    neptune_assign(run["source_code/integrations/neptune-r"], as.character(packageVersion("neptune")))
    neptune_sync(run)
    env_ <- new.env()
    env_$run <- run
    reg.finalizer(env_, function(x)
      tryCatch({
        x$run$wait()
      }, error = function(e) {
        warning(paste0("Failed to await neptune run synchronization: ", as.character(e)))
      }), onexit = TRUE)

    return(run)
  }
