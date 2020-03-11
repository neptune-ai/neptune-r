\name{init_neptune}

\alias{init_neptune}

\title{
Initialize Neptune project
}

\description{
It initializes a Neptune project in which you can create experiments and log experiment metadata.
Neptune is a lightweight experiment tracking tool, for more information see <https://neptune.ai/>.
}

\usage{
init_neptune(project_name,
            api_token = NULL,
            python = NULL,
            python_path)
}

\arguments{
\item{project_name}{string, a name of the project in Neptune. Remember it is 'USERNAME/PROJECT_NAME'}
\item{api_token}{string, your Neptune API token that you can copy from your Neptune account, NULL if token is already set in a 'NEPTUNE_API_TOKEN' environment variable}
\item{python}{string, either python, conda, miniconda or venv. Decides which python to use for reticulate. Leave as NULL if reticulate is set up before calling init_neptune}
\item{python_path}{string, path to python or virtual enviroment or conda env name}
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
tryCatch(reticulate::install_miniconda(), error=function(e) print('miniconda already installed'))
set_neptune_token(token = 'eyJhcGlfYWRkcmVzcyI6Imh0dHBzOi8vdWkubmVwdHVuZS5haSIsImFwaV9rZXkiOiJiNzA2YmM4Zi03NmY5LTRjMmUtOTM5ZC00YmEwMzZmOTMyZTQifQ==')
init_neptune(project_name = 'shared/r-integration', python='miniconda', python_path='r-reticulate')
create_experiment(name = 'my first experiment')
log_metric('accuracy', 0.92)
stop_experiment()
# link to a neptune experiment
}

\keyword{interface}
