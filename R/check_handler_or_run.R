check_handler_or_run <-
  function(x){
    if(!(any(c("neptune.new.handler.Handler", "neptune.new.metadata_containers.run.Run") %in% class(x))))
      stop("x must be a neptune Run or Handler")
  }
