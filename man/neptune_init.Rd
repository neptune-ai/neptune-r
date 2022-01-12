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
            mode = "async",
            custom_run_id = NULL,
            name = NULL,
            description = NULL,
            tags = NULL,
            capture_stdout = TRUE,
            capture_stderr = TRUE,
            capture_hardware_metrics = TRUE,
            capture_traceback = TRUE,
            monitoring_namespace = NULL,
            fail_on_exception = TRUE,
            flush_period = 5,
            proxies = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{project}{
character – Name of a project in a form of namespace/project_name. If NULL, the value of NEPTUNE_PROJECT environment variable will be taken.
}
  \item{api_token}{
character – User’s API token. If NULL, the value of NEPTUNE_API_TOKEN environment variable will be taken.
Note: It is strongly recommended to use NEPTUNE_API_TOKEN environment variable rather than placing your API token in plain text in your source code.
}
  \item{run}{
character – An existing run's identifier like'SAN-1' in case of resuming a tracked run. A run with such identifier must exist. If NULL is passed, starts a new tracked run. See Resume run guide.
}
\item{python}{
character - one of python, conda, miniconda, venv. Specifies which type of python's backend should be used.
}
  \item{python_path}{
character - path to python executable.
}
  \item{source_files}{
character vector – List of source files to be uploaded. Must be list of str or single str. Uploaded sources are displayed in the run’s Source code tab.

If NULL is passed, for non-interactive sessions the R script from which the method is called will be uploaded.

Unix style pathname pattern expansion is supported. For example, you can pass '*.py' to upload all python source files from the current directory. For Python 3.5 or later, paths of uploaded files on server are resolved as relative to the calculated common root of all uploaded source files. For older Python versions, paths on server are resolved always as relative to the current directory. For recursion lookup use '**/*.py' (for Python 3.5 and later). For more information see glob library.
}
  \item{mode}{
character – Connection mode in which the tracking will work. Possible values "async", "sync", "offline", and "debug", "read-only". See Connection modes guide.
}
\item{custom_run_id}{character – A unique identifier that can be used to log metadata to a single run from multiple files or processes. The maximum length of the identifier is 32 characters. Make sure you are using the same identifier everywhere. See Pipelines guide.
If NULL and the NEPTUNE_CUSTOM_RUN_ID environment variable is set Neptune will use its value as custom_run_id.}
\item{name}{character – Editable name of the run. Name is displayed in the run's Details and in Runs table as a column.}
\item{description}{character – Editable description of the run. Description is displayed in the run's Details and can be displayed in the runs view as a column.}
\item{tags}{character vector – Tags of the run. They are editable after run is created. Tags are displayed in the run's Details and can be viewed in Runs table view as a column.}
\item{capture_stdout}{logical – Whether to send python's stdout. Tracked metadata will be stored inside monitoring_namespace.}
\item{capture_stderr}{logical – Whether to send python’s stderr. Tracked metadata will be stored inside monitoring_namespace.
}
\item{capture_hardware_metrics}{logical – Whether to send hardware monitoring logs (CPU, GPU, Memory utilization). Tracked metadata will be stored inside monitoring_namespace.
}
\item{capture_traceback}{logical – Whether to send run’s traceback in case of an exception on Python's side.
}
\item{monitoring_namespace}{character - Namespace inside which all monitoring logs be stored.
}
\item{fail_on_exception}{logical – Whether to set run's  as True, if an uncaught exception on python's side happens.
}
\item{flush_period}{numeric -  how often asynchronous thread should synchronize data with Neptune servers. Value in seconds.
}
\item{proxies}{named list (python's dict) - Argument passed to HTTP calls made via the python's Requests library. For more information see their proxies section.
}
}
\value{
Run object that is used to manage the tracked run and log metadata to it.
}
\author{
Authors:
\itemize{
  \item Mateusz Dominiak
  \item Maintainer: Neptune DevTeam Dev\email{backend@neptune.ai}
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
                    project = "common-r/quickstarts")
}
}
\keyword{interface}
