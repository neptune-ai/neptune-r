\name{neptune_install}
\alias{neptune_install}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
  todo
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
neptune_install(method = c("auto", "virtualenv", "conda"), conda = "auto", version = "default", envname = NULL, extra_packages = c("psutil"), restart_session = TRUE, conda_python_version = "3.7", ..., python_version = conda_python_version)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{method}{
%%     ~~Describe \code{method} here~~
}
  \item{conda}{
%%     ~~Describe \code{conda} here~~
}
  \item{version}{
%%     ~~Describe \code{version} here~~
}
  \item{envname}{
%%     ~~Describe \code{envname} here~~
}
  \item{extra_packages}{
%%     ~~Describe \code{extra_packages} here~~
}
  \item{restart_session}{
%%     ~~Describe \code{restart_session} here~~
}
  \item{conda_python_version}{
%%     ~~Describe \code{conda_python_version} here~~
}
  \item{\dots}{
%%     ~~Describe \code{\dots} here~~
}
  \item{python_version}{
%%     ~~Describe \code{python_version} here~~
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
function (method = c("auto", "virtualenv", "conda"), conda = "auto", 
    version = "default", envname = NULL, extra_packages = c("psutil"), 
    restart_session = TRUE, conda_python_version = "3.7", ..., 
    python_version = conda_python_version) 
{
    if (.Machine$sizeof.pointer != 8) {
        stop("Unable to install Neptune on this platform.", "Binary installation is only available for 64-bit platforms.")
    }
    method <- match.arg(method)
    if (is_windows()) {
        method <- "conda"
        have_conda <- !is.null(tryCatch(conda_binary(conda), 
            error = function(e) NULL))
        if (!have_conda) {
            stop("Neptune installation failed (no conda binary found)\n\n", 
                "Install Miniconda by running `reticulate::install_miniconda()` or ", 
                "install Anaconda for Python 3.x (https://www.anaconda.com/download/#windows) ", 
                "before installing Neptune\n", call. = FALSE)
        }
        if (py_available()) {
            stop("You should call install_keras() only in a fresh ", 
                "R session that has not yet initialized Neptune (this is ", 
                "to avoid DLL in use errors during installation)")
        }
    }
    packages <- unique(c(parse_neptune_version(version), as.character(extra_packages)))
    packages <- shQuote(gsub("[\"']", "", packages))
    reticulate::py_install(packages = packages, envname = envname, 
        method = method, conda = conda, python_version = python_version, 
        pip = TRUE, ...)
    cat("\nInstallation complete.\n\n")
    if (restart_session && requireNamespace("rstudioapi", quietly = TRUE) && 
        rstudioapi::hasFun("restartSession")) 
        rstudioapi::restartSession()
    invisible(NULL)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
