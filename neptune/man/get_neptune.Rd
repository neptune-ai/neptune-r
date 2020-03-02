\name{get_neptune}

\alias{get_neptune}

\title{
Get Neptune experiment object
}

\description{
It gets Neptune experiment object so that it can be used directly.
Neptune is a lightweight experiment tracking tool, for more information see <https://neptune.ai/>.
}

\usage{
get_neptune()
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
get_neptune()$log_metric('auc', 0.45)
get_neptune()$stop()
# link to a neptune experiment
}

\keyword{interface}



