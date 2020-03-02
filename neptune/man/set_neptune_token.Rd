\name{set_neptune_token}

\alias{set_neptune_token}

\title{
Set Neptune API token
}

\description{
It sets your Neptune API token to the 'NEPTUNE_API_TOKEN' environment variable, so that Neptune knows who are you.
Neptune is a lightweight experiment tracking tool, for more information see <https://neptune.ai/>.
}

\usage{
set_neptune_token(token = 'eyJhcGlfYWRkcmVzcyI6Imh0dHBz'')
}

\arguments{
\item{token}{string, your Neptune API token that you can copy from your Neptune account}
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
install_neptune()
set_neptune_token(token = 'eyJhcGlfYWRkcmVzcyI6Imh0dHBz'')
init_neptune(project_name = 'HappyUser/GreatProject')
create_experiment(name = 'my first experiment')
log_metric('accuracy', 0.92)
stop_experiment()
}

\keyword{interface}
