\name{log_artifact}

\alias{log_artifact}

\title{
Log artifact to Neptune experiment
}

\description{
It logs artifact like model binary or some other file to Neptune Experiment.
Neptune is a lightweight experiment tracking tool, for more information see <https://neptune.ai/>.
}

\usage{
log_artifact(filename = 'model.Rdata')
}

\arguments{
\item{filename}{string, filename of the artifact that you want to log to Neptune}
}

\author{
\strong{Maintainer}: Jakub Czakon \email{jakub.czakon@neptune.ai}

Authors:
\itemize{
  \item Mateusz Dominiak \email{XXX@YYY.com}
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
init_neptune(project_name = 'HappyUser/GreatProject')
create_experiment(name = 'my first experiment')
log_artifact(filename = 'model.Rdata')
stop_experiment()
}

\keyword{interface}
