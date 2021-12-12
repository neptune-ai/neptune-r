\name{neptune_init}
\alias{neptune_init}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
  todo
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
neptune_init(project, api_token = NULL, python = NULL, python_path, source_files = NULL, connection_mode = "async")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{project}{
%%     ~~Describe \code{project} here~~
}
  \item{api_token}{
%%     ~~Describe \code{api_token} here~~
}
  \item{python}{
%%     ~~Describe \code{python} here~~
}
  \item{python_path}{
%%     ~~Describe \code{python_path} here~~
}
  \item{source_files}{
%%     ~~Describe \code{source_files} here~~
}
  \item{connection_mode}{
%%     ~~Describe \code{connection_mode} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (project, api_token = NULL, python = NULL, python_path, 
    source_files = NULL, connection_mode = "async") 
{
    if (!(connection_mode \%in\% c("async", "sync", "offline", 
        "debug"))) {
        stop("connection_mode must be one of \"async\", \"sync\", \"offline\", \"debug\"")
    }
    if (is.null(source_files) & !interactive()) {
        source_files <- c(this.path::this.path())
    }
    if (!is.null(api_token)) {
        neptune_set_token(api_token)
    }
    requireNamespace("reticulate", quietly = TRUE)
    if (!isNamespaceLoaded("reticulate")) 
        stop("couldn't load reticulate package")
    if (!is.null(python)) {
        switch(python, python = reticulate::use_python(python = python_path, 
            required = TRUE), conda = reticulate::use_condaenv(condaenv = python_path, 
            required = TRUE), miniconda = reticulate::use_miniconda(condaenv = python_path, 
            required = TRUE), venv = reticulate::use_virtualenv(virtualenv = python_path, 
            required = TRUE), stop("Invalid python argument, should be one of [python, conda, miniconda, venv]"))
    }
    neptune <- get_neptune()
    run <- suppressWarnings(reticulate::py_suppress_warnings(neptune$init(project = project, 
        api_token = Sys.getenv("NEPTUNE_API_TOKEN"), mode = connection_mode, 
        source_files = source_files)))
    on.exit(tryCatch({
    }, error = function(e) {
        warning(paste0("Failed to stop neptune experiment: ", 
            str(e)))
    }))
    return(run)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
