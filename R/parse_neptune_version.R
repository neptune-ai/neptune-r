parse_neptune_version <-
function(version) {
  # returns unquoted string directly passable to pip, e.g 'neptune-client==0.1.*'

  if(is.null(version) || is.na(version) || version %in% c("", "release"))
    return("neptune-client")

  version <- as.character(version) # if numeric_version()

  # full path to whl.
  if (grepl("^.*\\.whl$", version))
    return(normalizePath(version))

  package <- "neptune-client"

  if(version %in% c("default", ""))
    version <- numeric_version("0.13.3")

  if(!grepl("[><=]", version))
    version <- sprintf("==%s.*", version)

  paste0(package, version)
}
