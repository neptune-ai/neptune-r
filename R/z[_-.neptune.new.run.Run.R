`[<-.neptune.new.run.Run` <-
function(x, i, value) {
  if (is.null(value)) {
    reticulate::py_del_item(x = x, name = i)
  } else{
    reticulate::py_set_item(x = x,
                            name = i,
                            value = value)
  }
  x
}
