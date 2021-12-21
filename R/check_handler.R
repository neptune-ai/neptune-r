check_handler <-
function(x){
  if(!("neptune.new.handler.Handler" %in% class(x)))
    stop("x must be a neptune Handler")
}
