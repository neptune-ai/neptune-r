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
set_property(property = 'data-version', value = 'asd19210u1asd')
}

\arguments{
\item{property}{string, a name of the property that you want to log to Neptune}
\item{value}{string, a value of the property that you want to log to Neptune}
}
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
set_property(property = 'data-version', value = 'asd19210u1asd')
log_metric('accuracy', 0.92)
stop_experiment()
}

\keyword{interface}
