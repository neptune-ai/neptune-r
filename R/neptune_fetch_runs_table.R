neptune_fetch_runs_table <- function(project,
                                     id = NULL,
                                     state = NULL,
                                     owner = NULL,
                                     tag = NULL) {
  project <- get_neptune()$init_project(project = project, mode = "read-only")
  project$fetch_runs_table(
    id = id,
    state = state,
    owner = owner,
    tag = tag
  )$to_pandas()
}
