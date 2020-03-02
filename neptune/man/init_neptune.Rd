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
init_neptune(project_name = 'HappyUser/GreatProject')
}

\arguments{
\item{project_name}{string, a name of the project in Neptune. Remember it is 'USERNAME/PROJECT_NAME'}
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
log_metric('accuracy', 0.92)
stop_experiment()
}

\keyword{interface}
