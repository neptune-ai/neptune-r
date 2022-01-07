check_run <-
function(run){
  if(!("neptune.new.run.Run" %in% class(run)))
    stop("run must be a neptune Run")
}
