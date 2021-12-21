neptune_file_as_image <-
function(x){
  reticulate::import("neptune.new.types")$File$as_image(x)
}
