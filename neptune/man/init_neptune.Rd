\name{init_neptune}

\alias{init_neptune}

\title{
Initialize 'Neptune' project
}

\description{
It initializes a 'Neptune' project in which you can create experiments and log experiment metadata.
'Neptune' is a lightweight experiment tracking tool, for more information see <https://neptune.ai/>.
}

\usage{
init_neptune(project_name,
            api_token = NULL,
            python = NULL,
            python_path)
}
\arguments{
\item{project_name}{string, a name of the project in Neptune. Has a format 'USERNAME/PROJECT_NAME'}
\item{api_token}{string, your Neptune API token that you can copy from your Neptune account}
\item{python}{string, environemnt type. Can be one of 'python', 'conda', 'miniconda', and 'venv'}
\item{python_path}{string, path to your python distribution. For exmaple  if you selected
python ='miniconda' you can have an example python_path = `/home/marry/miniconda3/bin/python'}
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
init_neptune(api_token = 'ANONYMOUS',
             project_name = 'shared/r-integration')

# Start logging
create_experiment(name = 'my first experiment')
log_metric('accuracy', 0.92)

# Stop logging
stop_experiment()
# See an example experiment here https://ui.neptune.ai/o/shared/org/r-integration/e/RIN-56/logs
}
}

\keyword{interface}
