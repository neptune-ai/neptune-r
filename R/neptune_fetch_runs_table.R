neptune_fetch_runs_table <- function(project,
                               id=NULL,
                               state=NULL,
                               owner=NULL,
                               tag=NULL) {
  get_neptune()$get_project(project)$fetch_runs_table(id=id,
                                                      state=state,
                                                      owner=owner,
                                                      tag=tag)$to_pandas()
}
