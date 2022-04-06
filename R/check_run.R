check_run <-
function(run){
  if(!("neptune.new.metadata_containers.run.Run" %in% class(run)))
    stop("run must be a neptune Run")
}
