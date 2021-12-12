neptune_fetch_runs <- function(project) {
  get_neptune()$get_project(project)$fetch_runs_table()$to_pandas()
}