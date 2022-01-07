neptune_set_api_token <-
function (token)
{
  if(py_available()){
    reticulate::py_run_string(paste0("import os
os.environ['NEPTUNE_API_TOKEN'] = '",token,"'"))
  }
  
  Sys.setenv(NEPTUNE_API_TOKEN = token)
}
