\name{stop_experiment}

\alias{stop_experiment}

\title{
Stop Neptune experiment
}

\description{
It stops Neptune experiment and no additional metadata can be logged to it.
Neptune is a lightweight experiment tracking tool, for more information see <https://neptune.ai/>.
}

\usage{
stop_experiment()
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

# We are using api token for an anonymous user neptuner. For your projects use your private token.
init_neptune(api_token = 'ANONYMOUS',
             project_name = 'shared/r-integration',
             python='miniconda',
             python_path='r-reticulate')

# Start logging
create_experiment(name = 'my first experiment')
log_metric('accuracy', 0.92)

# Stop logging
stop_experiment()
# See an example experiment here https://ui.neptune.ai/o/shared/org/r-integration/e/RIN-56/logs
}

\keyword{interface}

