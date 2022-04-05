neptune_install <-
function(method = c("auto", "virtualenv", "conda"),
                            conda = "auto",
                            version = "0.15",
                            envname = NULL,
                            extra_packages = c("psutil"),
                            restart_session = TRUE,
                            conda_python_version = "3.7",
                            ...,
                            python_version = conda_python_version) {

  # verify 64-bit
  if (.Machine$sizeof.pointer != 8) {
    stop("Unable to install Neptune on this platform.",
         "Binary installation is only available for 64-bit platforms.")
  }

  method <- match.arg(method)

  # some special handling for windows
  if (identical(.Platform$OS.type, "windows")) {

    # conda is the only supported method on windows
    method <- "conda"

    # confirm we actually have conda - let reticulate prompt miniconda installation
    have_conda <- !is.null(tryCatch(reticulate::conda_binary(conda), error = function(e) NULL))
    if (!have_conda) {
      stop("Neptune installation failed (no conda binary found)\n\n",
           "Install Miniconda by running `reticulate::install_miniconda()` or ",
           "install Anaconda for Python 3.x (https://www.anaconda.com/download/#windows) ",
           "before installing Neptune\n",
           call. = FALSE)
    }

    # avoid DLL in use errors
    if (py_available()) {
      stop("You should call neptune_install() only in a fresh ",
           "R session that has not yet initialized Neptune (this is ",
           "to avoid DLL in use errors during installation)")
    }
  }

  packages <- unique(c(
    parse_neptune_version(version),
    as.character(extra_packages)
  ))

  # don't double quote if packages were shell quoted already
  packages <- shQuote(gsub("[\"']", "", packages))

  reticulate::py_install(
    packages              = packages,
    envname               = envname,
    method                = method,
    conda                 = conda,
    python_version        = python_version,
    pip                   = TRUE,
    pip_ignore_installed  = TRUE,
    ...
  )

  cat("\nInstallation complete.\n\n")

  if (restart_session &&
      requireNamespace("rstudioapi", quietly = TRUE) &&
      rstudioapi::hasFun("restartSession"))
    rstudioapi::restartSession()

  invisible(NULL)
}
