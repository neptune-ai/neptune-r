\name{neptune_install}
\alias{neptune_install}
\title{
  Install neptune-client along with required python enviroment.
}
\description{
\code{neptune_install()} installs just the neptune-client python package and it's
direct dependencies.
}
\usage{
neptune_install(method = c("auto", "virtualenv", "conda"),
  conda = "auto",
  version = "0.15",
  envname = NULL,
  extra_packages = c("psutil"),
  restart_session = TRUE,
  conda_python_version = "3.7",
  ...,
  python_version = conda_python_version)
}
\arguments{
  \item{method}{
Installation method. By default, "auto" automatically finds a method that will work in the local environment. Change the default to force a specific installation method. Note that the "virtualenv" method is not available on Windows.
}
  \item{conda}{
The path to a conda executable. Use "auto" to allow reticulate to automatically find an appropriate conda binary. See Finding Conda for more details.
}
  \item{version}{
Neptune-client version to install. Valid values include:
   +  `"default"` installs  `r default_version`

   + `"release"` installs the latest release version of neptune-client

   + A version specification like `"0.9"` or `"0.9.16"`. Note that if the patch
   version is not supplied, the latest patch release is installed

   + The full URL or path to a installer binary or python *.whl file.

}
  \item{envname}{
The name, or full path, of the environment in which Python packages are to be installed. When NULL (the default), the active environment as set by the RETICULATE_PYTHON_ENV variable will be used; if that is unset, then the r-reticulate environment will be used.
}
  \item{extra_packages}{
Additional Python packages to install along with Neptune
}
  \item{restart_session}{
Restart R session after installing (note this will only occur within RStudio).
}
  \item{conda_python_version}{
python_version,conda_python_version the python version installed in the created conda environment. Ignored when attempting to install with a Python virtual environment.
}
  \item{\dots}{
other arguments passed to [reticulate::conda_install()] or [reticulate::virtualenv_install()], depending on the `method` used. Accepts `pip_ignore_installed=TRUE`.
}
  \item{python_version}{
The requested Python version. Ignored when attempting to install with a Python virtual environment.
}
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
neptune_install()
}
}
\keyword{interface}
