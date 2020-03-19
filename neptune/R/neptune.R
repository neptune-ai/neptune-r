install_neptune <- function() {
  requireNamespace("reticulate", quietly = T)
  if (!isNamespaceLoaded("reticulate"))
    stop('couldn\'t load reticulate package')
  reticulate::py_install(packages = 'neptune-client')
  tryCatch({
    reticulate::import('psutil')
  }, error = function(e){
    reticulate::py_install(packages = 'psutil')
  })
}

init_neptune <- function(project_name,
                        api_token = NULL,
                        python = NULL,
                        python_path) {
  if(!is.null(api_token)){
    set_neptune_token(api_token)
  }
  requireNamespace("reticulate", quietly = T)
  if (!isNamespaceLoaded("reticulate"))
    stop('couldn\'t load reticulate package')

  if(!is.null(python)){
    switch (python,
            python = reticulate::use_python(python = python_path, required = T),
            conda = reticulate::use_condaenv(condaenv = python_path, required = T),
            miniconda = reticulate::use_miniconda(condaenv = python_path, required = T),
            venv = reticulate::use_virtualenv(virtualenv = python_path, required = T),
            stop('Invalid python argument, should be one of [python, conda, miniconda, venv]')
    )
  }

  tryCatch({
    neptune <- reticulate::import("neptune")
  }, error = function(e) {
    print('couldn\'t import neptune client. Trying to install')
    install_neptune()
    neptune <- reticulate::import("neptune")
  })
  options(neptune = neptune)

  return(
    suppressWarnings(reticulate::py_suppress_warnings(neptune$init(project_qualified_name = project_name,
                                                                   api_token=Sys.getenv('NEPTUNE_API_TOKEN'))))
  )
}

get_neptune <- function() {
  ret <- getOption('neptune')
  if (is.null('neptune'))
    stop('Please call init_neptune first')
  return(ret)
}

set_neptune_token <- function(token = 'eyJhcGlfYWRkcmVzcyI6Imh0dHBzOi8vdWkubmVwdHVuZS5haSIsImFwaV9rZXkiOiJiNzA2YmM4Zi03NmY5LTRjMmUtOTM5ZC00YmEwMzZmOTMyZTQifQ==') {
  Sys.setenv('NEPTUNE_API_TOKEN' = token)
  reticulate::py_run_string(code = paste0(
    'import os; os.environ["NEPTUNE_API_TOKEN"] = "',token,'"'
  ))
}

stop_experiment <- function() {
  get_neptune()$stop()
}

create_experiment <- function(name = 'default',
                             params = reticulate::dict(),
                             tags = c()) {
  get_neptune()$create_experiment(name = name,
                                 params = params,
                                 tags = tags)
}

append_tag <- function(tag) {
  get_neptune()$append_tag(tag)
}
set_property <- function(property, value) {
  get_neptune()$set_property(property, value)
}
log_metric <- function(metric, value) {
  get_neptune()$log_metric(metric, value)
}
log_artifact <- function(filename) {
  get_neptune()$log_artifact(filename)
}
log_image <- function(name='image_channel', filename) {
  get_neptune()$log_image(name, filename)
}
