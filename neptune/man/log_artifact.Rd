\name{log_artifact}

\alias{log_artifact}

\title{
Log artifact to 'Neptune' experiment
}

\description{
It logs artifact like model binary or some other file to 'Neptune' Experiment.
'Neptune' is a lightweight experiment tracking tool, for more information see <https://neptune.ai/>.
}

\usage{
log_artifact(filename)
}

\arguments{
\item{filename}{string, filename of the artifact that you want to log to Neptune}
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

file = tempfile()
x=1:10
save(x, file=file)
log_artifact(filename = file)

# Stop logging
stop_experiment()
# See an example experiment here https://ui.neptune.ai/o/shared/org/r-integration/e/RIN-56/logs
}
}

\keyword{interface}
