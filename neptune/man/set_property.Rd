\name{set_property}

\alias{set_property}

\title{
Set a property to Neptune experiment
}

\description{
It logs a property:value pair to Neptune Experiment.
Neptune is a lightweight experiment tracking tool, for more information see <https://neptune.ai/>.
}

\usage{
set_property(property, value)
}

\arguments{
\item{property}{string, a name of the property that you want to log to Neptune}
\item{value}{string, a value of the property that you want to log to Neptune}
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

# We are using api token for an anonymous user neptuner. For other projects use your private api token.
init_neptune(api_token = 'ANONYMOUS',
             project_name = 'shared/r-integration',
             python='miniconda',
             python_path='r-reticulate')

# Start logging
create_experiment(name = 'my first experiment')
set_property(property = 'data-version', value = 'asd19210u1asd')
log_metric('accuracy', 0.92)

# Stop logging
stop_experiment()
# See an example experiment here https://ui.neptune.ai/o/shared/org/r-integration/e/RIN-56/logs
}

\keyword{interface}
