install_neptune <- function() {
}

init_neptune <- function(project_qualified_name,
                        api_token = Sys.getenv('NEPTUNE_API_TOKEN')) {
  if (!require("reticulate"))
    stop('couldn\'t load reticulate package')
  tryCatch({
    neptune <- import("neptune")
  }, error = function(e) {
    warning('couldn\'t import neptune client. Trying to install')
    reticulate::py_install('neptune-client')
    neptune <- import("neptune")
  })
  options('neptune') <- neptune

  return(
    neptune$init(project_qualified_name = project_qualified_name,
                 api_token = api_token)
  )
}

get_neptune <- function() {
  ret <- getOption('neptune')
  if (is.null('neptune'))
    stop('Please call initNeptune first')
  return(ret)
}

set_neptune_token <- function(token = 'eyJhcGlfYWRkcmVzcyI6Imh0dHBz') {
  Sys.setenv('NEPTUNE_API_TOKEN' = token)
}

stop_experiment <- function() {
  get_neptune()$stop()
}

create_experiment <- function(name,
                             params = list(),
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
log_image <- function(name, filename) {
  get_neptune()$log_image(name, filename)
}
