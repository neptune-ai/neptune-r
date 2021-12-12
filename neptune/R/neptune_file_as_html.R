neptune_file_as_html <-
function(x){
  reticulate::import("neptune.new.types")$File$as_html(x)
}
