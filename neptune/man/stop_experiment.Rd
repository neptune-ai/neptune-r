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
set_neptune_token(token = 'eyJhcGlfYWRkcmVzcyI6Imh0dHBzOi8vdWkubmVwdHVuZS5haSIsImFwaV9rZXkiOiJiNzA2YmM4Zi03NmY5LTRjMmUtOTM5ZC00YmEwMzZmOTMyZTQifQ==')
init_neptune(project_name = 'shared/r-integration')
create_experiment(name = 'my first experiment')
log_metric('accuracy', 0.92)
stop_experiment()
# link to a neptune experiment
}

\keyword{interface}

