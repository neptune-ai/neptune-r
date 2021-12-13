\name{neptune_init}
\alias{neptune_init}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Starts a new tracked run, and append it to the top of the Runs table view.
}
\description{
Starts a new tracked run, and append it to the top of the Runs table view. All parameters are optional, hence minimal invocation: run <- neptune_init().
}
\usage{
neptune_init(project = NULL,
  api_token = NULL,
  run = NULL,
  python = NULL,
  python_path,
  source_files = NULL,
  connection_mode = "async")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{project}{
(str, optional, default is NULL) – Name of a project in a form of namespace/project_name. If NULL, the value of NEPTUNE_PROJECT environment variable will be taken.
}
  \item{api_token}{
(str, optional, default is NULL) – User’s API token. If NULL, the value of NEPTUNE_API_TOKEN environment variable will be taken.
Note: It is strongly recommended to use NEPTUNE_API_TOKEN environment variable rather than placing your API token in plain text in your source code.
}
  \item{run}{
(str, optional, default is NULL) – An existing run's identifier like'SAN-1' in case of resuming a tracked run. A run with such identifier must exist. If NULL is passed, starts a new tracked run. See Resume run guide.
}
\item{python}{
(str) - one of python, conda, miniconda, venv. Specifies which type of python's backend should be used.
}
  \item{python_path}{
(str) - path to python executable.
}
  \item{source_files}{
(list or str, optional, default is NULL) – List of source files to be uploaded. Must be list of str or single str. Uploaded sources are displayed in the run’s Source code tab.

If NULL is passed, for non-interactive sessions the R script from which the method is called will be uploaded.

Unix style pathname pattern expansion is supported. For example, you can pass '*.py' to upload all python source files from the current directory. For Python 3.5 or later, paths of uploaded files on server are resolved as relative to the calculated common root of all uploaded source files. For older Python versions, paths on server are resolved always as relative to the current directory. For recursion lookup use '**/*.py' (for Python 3.5 and later). For more information see glob library.
}
  \item{connection_mode}{
(str, optional, default is 'async') – Connection mode in which the tracking will work. Possible values "async", "sync", "offline", and "debug", "read-only". See Connection modes guide.
}
}
\value{
Run object that is used to manage the tracked run and log metadata to it.
}
\author{
Authors:
\itemize{
  \item Mateusz Dominiak
  \item Maintainer: Jakub Czakon \email{jakub.czakon@neptune.ai}
}
}
\seealso{
Useful links:
\itemize{
  \item \url{https://neptune.ai/}
  \item Documentation \url{https://docs.neptune.ai/}
  \item Report bugs at \url{https://github.com/neptune-ai/neptune-r/issues}
}
}
\examples{
\dontrun{
# We are using api token for an anonymous user neptuner. For your projects use your private token.
run <- neptune_init(api_token = 'ANONYMOUS',
                    project = 'shared/r-integration')
}
}
\keyword{interface}
